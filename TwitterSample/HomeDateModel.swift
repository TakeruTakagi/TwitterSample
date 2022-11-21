//
//  TimelineDateModel.swift
//  TwitterSample
//
//  Created by 髙木　武 on 2022/11/13.
//

import Foundation
import RealmSwift

class HomeViewDateModel: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var tweetSentence: String = ""
    @objc dynamic var tweetDate: Date = Date()
    
    convenience init(id: String, name: String, tweetSentence: String, tweetDate: Date) {
        self.init()
        self.id = id
        self.name = name
        self.tweetSentence = tweetSentence
        self.tweetDate = tweetDate
    }
}
