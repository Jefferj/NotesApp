//
//  ContentView.swift
//  NotesApp WatchKit Extension
//
//  Created by Apple on 19/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            NavigationLink("Agregar nota", destination: addNote())
            NavigationLink("Listar notas", destination: ListNotes())
        }
        .navigationTitle("Notes App")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
