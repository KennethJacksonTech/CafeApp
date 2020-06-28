//
//  CafeApp.swift
//  watchOS Extension
//
//  Created by Kenneth Jackson on 6/28/20.
//

import SwiftUI

@main
struct CafeApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
