//
//  JournalModel.swift
//  Journal3.0
//
//  Created by Kamil Wrobel on 8/24/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import Foundation


class EntryModel: Equatable, Codable {
    
    var title: String
    var bodyText: String
    var date: Date
    
    init(title: String, bodyText: String, date: Date = Date()){
        self.title = title
        self.bodyText = bodyText
        self.date = date
    }
    
    static func ==(lhs: EntryModel, rhs: EntryModel) -> Bool{
        if lhs.title != rhs.title {return false}
        if lhs.bodyText != rhs.title {return false}
        if lhs.date != rhs.date {return false}
        return true
        
    }
    
    
}
