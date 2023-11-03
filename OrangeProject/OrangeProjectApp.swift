//
//  OrangeProjectApp.swift
//  OrangeProject
//
//  Created by Harman on 2023-11-03.
//

import SwiftUI

struct OrangeProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            StartupView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
