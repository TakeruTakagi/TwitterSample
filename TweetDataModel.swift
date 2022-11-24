//
//  TweetDataModel.swift
//  
//
//  Created by 髙木　武 on 2022/11/22.
//

import Foundation
import RealmSwift

 class TweetDetaModel: Object {
     override static func primaryKey() -> String {
         return "id"
     }
     @objc dynamic var id: String = UUID().uuidString
     @objc dynamic var name: String = ""
     @objc dynamic var recordDate: Date = Date()
     @objc dynamic var text: String = ""

 }
