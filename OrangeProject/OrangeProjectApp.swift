//
//  OrangeProjectApp.swift
//  OrangeProject
//
//  Created by Harman on 2023-11-03.
//

import SwiftUI

@main
struct OrangeProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
