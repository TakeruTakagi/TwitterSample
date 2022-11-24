//
//  TimelineDateModel.swift
//  TwitterSample
//
//  Created by 髙木　武 on 2022/11/13.
//

import Foundation
import RealmSwift

class TweetDetaModel: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var recordDate: Date = Date()
    @objc dynamic var text: String = ""
    
    convenience init(id: String, name: String, recordDate: Date, text: String) {
        self.init()
        self.id = id
        self.name = name
        self.recordDate = recordDate
        self.text = text
    }
    
}
