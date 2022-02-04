//
//  Tools.swift
//  NotesApp WatchKit Extension
//
//  Created by Apple on 20/01/22.
//

import Foundation

class Tools{
    let key : String = "NotesAps"
    
    static let shared = Tools()
    
    private init() {}
    
    
    
    func save(array:[Note]) {
        
        let data = array.map {try? JSONEncoder().encode($0)}
        
        UserDefaults.standard.setValue(data, forKey: key)
        
    }
    
    func load() -> [Note] {
        guard let savedData = UserDefaults.standard.array(forKey: key) as? [Data] else{
            
            return[]
            
            
        }
        return savedData.map{try!JSONDecoder().decode(Note.self, from: $0)}
        
        
    }
    
    
    
    
}
