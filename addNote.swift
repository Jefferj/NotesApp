//
//  addNote.swift
//  NotesApp WatchKit Extension
//
//  Created by Apple on 19/01/22.
//

import SwiftUI

struct addNote: View {
    
    @State private var notes = [Note]()
    
    @State private var text = ""
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        VStack {
            TextField("nota", text: $text)
            Button("Guardar Nota") {
                
                guard text.isEmpty == false else{
                    return
                }
                
                let note = Note(title: text)
                notes.append(note)
                Tools.shared.save(array: notes)
                text = ""
                presentation.wrappedValue.dismiss()
                
            }
        }
        .onAppear(perform: {
            
            notes = Tools.shared.load()
        })
    }
}

struct addNote_Previews: PreviewProvider {
    static var previews: some View {
        addNote()
    }
}
