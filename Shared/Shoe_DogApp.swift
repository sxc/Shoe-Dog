//
//  Shoe_DogApp.swift
//  Shared
//
//  Created by Xiaochun Shen on 2021/5/8.
//

import SwiftUI
import CloudKit

@main
struct Shoe_DogApp: App {
    init() {
        let containter = CKContainer(identifier: "iCloud.com.shenxiaochun.test.ShoeDog")
        let db = containter.publicCloudDatabase
        let recordID = CKRecord.ID(recordName: "shoe-pos-test")
        let record = CKRecord(recordType: "Shoe", recordID: recordID)
//        let imageURL = Bundle.main.url(forResource: "nike-mamba-fury", withExtension: "png")!
        record["name" ] = "Mamba Fury" as NSString
        record["price"] = 125.99 as Double
//        record["image"] = CKAsset(fileURL: imageURL)
        db.save(record) { (record, error) in
            if let rec = record {
                print("record saved \(rec)")
            } else {
                print("error saving \(error!)")
            }
        }
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
