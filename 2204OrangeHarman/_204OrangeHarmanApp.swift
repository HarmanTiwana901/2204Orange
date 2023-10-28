//
//  _204OrangeHarmanApp.swift
//  2204OrangeHarman
//
//  Created by Harman on 2023-10-28.
//

import SwiftUI

@main
struct _204OrangeHarmanApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
