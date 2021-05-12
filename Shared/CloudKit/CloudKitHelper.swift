//
//  CloudKitHelper.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/11.
//

import Foundation
import CloudKit

struct CloudKitHelper {
    
    // Database
    static let publicDB = CKContainer.shared.publicCloudDatabase
    
    static func getRecords(recordType: CKRecord.RecordType = CKConstant.RecordType.Brand,
                           cursor: CKQueryOperation.Cursor? = nil,
                           completion: @escaping (([CKRecord]) -> Void)) {
        let operation: CKQueryOperation
        if let cursor = cursor {
            operation = CKQueryOperation(query: CKQuery(recordType: recordType, predicate: .init(value: true)))
        }
        var records: [CKRecord] = []
        operation.recordFetchedBlock = { record in
            records.append(record)
        }
        operation.queryCompletionBlock = { cursor, error in
            if let cursor = cursor {
                getRecords(cursor : cursor) { fetchedRecords in
                    records.append(contentsOf: fetchedRecords)
                    completion(records)
                }
            } else {
                completion(records)
            }
        }
        CloudKitHelper.publicDB.add(operation)
    }
    
    static func fetchAllSizes(products: [Product], completion: @escaping ([Product], Error?) -> Void) {
        let recordIDs = products.map {
            $0.record[.sizes] as! [CKRecord.Reference]
        }.reduce([], +).map { $0.recordID }
        var prod = products
        let operation = CKFetchRecordsOperation(recordIDs: recordIDs)
        
        //
        operation.fetchRecordsCompletionBlock = { result, error in
            if let _ = result?.values {
                prod.enumerated().forEach { (index, product) in
                    let productsSizes = product.record[.sizes] as!
                    [CKRecord.Reference]
                    let x =  productsSizes.map { $0.recordID }
                    CloudKitHelper.fetchSizes(x) { (sizes) in
                        prod[index].sizes = sizes
                        completion(prod, error)
                        
                    }
                    
                }
            }
            
        }
        
        CloudKitHelper.publicDB.add(operation)
        
        
        
    }
    
    static func fetchSizes(_ recordIDs: [CKRecord.ID], completion: @escaping ([Size]) -> Void) {
        var recordSizes:[Size] = []
        let fetchOperation = CKFetchRecordsOperation(recordIDs: recordIDs)
        
        // next
        
        fetchOperation.fetchRecordsCompletionBlock = {
            records, error in
            if error != nil {
                print("\(error!)")
            } else {
                if let records = records {
                    for record in records {
                        recordSizes.append(Size(record: record.value))
                    }
                }
                
                DispatchQueue.main.async {
                    var sorted = recordSizes.sorted(by: { $0.size < $1.size })
                    completion(sorted)
                    sorted = []
                }
            }
        }
        
        CloudKitHelper.publicDB.add(fetchOperation)
    }
    
}
