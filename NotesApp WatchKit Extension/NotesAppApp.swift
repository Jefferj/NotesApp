//
//  NotesAppApp.swift
//  NotesApp WatchKit Extension
//
//  Created by Apple on 19/01/22.
//

import SwiftUI

@main
struct NotesAppApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
        
        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
