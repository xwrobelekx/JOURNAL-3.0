//
//  JournalModelController.swift
//  Journal3.0
//
//  Created by Kamil Wrobel on 8/24/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import Foundation


class JournalModelController {
    
    // singelton
    
    static var shared = JournalModelController()
    
    
    //source of truth
    var journalEntries: [EntryModel] = []
    
    //CRUD
    
    
//create
    func createNewEntry(title: String, bodyText: String) {
        let newEntry = EntryModel(title: title, bodyText: bodyText)
        journalEntries.append(newEntry)
    }
    //read
    
    // update
    func update(oldEntry: EntryModel, newTitle: String, newBodyText: String){
        // need to take existing entry and replace its values with new ones
        //FIXME: build this function
        
        
    }
    
    //delete
    func delete(entry: EntryModel){
        if let index = journalEntries.index(of: entry){
        journalEntries.remove(at: index)
        }
        
        
        //FIXME: Need to save to Persistance after deleting
        
    }
    
    // simple Persist
    
    //URL
    
    func fileURL() -> URL {
        
        //#1 create a path to where to save the data
        //use file manager - default (which is a singeltone) - acces urls - from doc directory - in user domain
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        //#2 create a station for your data
        let documentDirectory = path[0]
        //#3 create a name for your file
        let fileName = "journal3.json"
        //#4 connect everything together (so this appends file name to the end of the url)
        let fullURL = documentDirectory.appendingPathComponent(fileName)
        //#5 return full URL
        return fullURL
    }
    
   
    //MARK: - Save to Persistance
    
    func saveToPersistance() {
        let encoder = JSONEncoder()
        
        do {
            //#1 create a property that will hold encoded data/ and try to encode your data
            let data = try encoder.encode(journalEntries)
            //#2 take the encoded data and try writing it to earlier created location using url
            try data.write(to: fileURL())
            
        }catch {
            print("Failed to encode: \(error) \(error.localizedDescription)")
        }
        
    }

    
    
    //MARK: - Load from Persistance

    func loadFromPersistance() -> [EntryModel] {
        let decoder = JSONDecoder()
        do{
            let data = try Data(contentsOf: fileURL())
            let decodedEntry = try decoder.decode([EntryModel].self, from: data)
        return decodedEntry
        } catch {
            print("Failed to decode from Persistance Store: \(error), \(error.localizedDescription)")
        }
        return []
}
}
















