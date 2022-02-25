//
//  ObservableObjectApp.swift
//  ObservableObject
//
//  Created by Abduqaxxor on 25/2/22.
//

import SwiftUI

@main
struct ObservableObjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            StarterScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(Status())
        }
    }
}
