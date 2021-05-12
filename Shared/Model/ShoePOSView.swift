//
//  ShoePOSView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/12.
//

import Foundation
import CloudKit

class ShoePOSViewModel: ObservableObject {
    @Published var brands: [Brand] = []
    @Published var products: [Product] = []
    @Published var isProductDetailVisible = false
    @Published var selectedProduct: Product?
    
    // next
    func createBrands() {
        let records = ShoeData.brandsItems.map { Brand(brand: $0)
            
        }.map {
            getRecord(brand: $0)
        }
        save(records: records)
    }
    
    // next
    func createProducts() {
        CloudKitHelper.getRecords() { records in
            DispatchQueue.main.async {
                self.brands = []
                self.brands = records.map {
                    Brand(record: $0)
                }
                
                for item in ShoeData.productItems {
                    let brandID = self.filterBrands(by: item.brand)
                    self.save(product: item, brandID: brandID?.recordID)
                }
            }
            
        }
    }
    
    // next
    func fetchAllBrands() {
        CloudKitHelper.getRecords() { records in
            DispatchQueue.main.async {
                self.brands = []
                self.brands = records.map {
                    Brand(record: $0)
                }
            }
        }
    }
    
    // next
    func fetchAllProducts() {
        CloudKitHelper.getRecords(recordType: CKConstant.RecordType.Product) { records in
            let prods = records.map {
                Product(record: $0)
            }
            CloudKitHelper.fetchAllSizes(products: prods) { (items, error) in
                DispatchQueue.main.async {
                    self.products = []
                    self.products = items
                }
                
            }
            
        }
    }
    
}
