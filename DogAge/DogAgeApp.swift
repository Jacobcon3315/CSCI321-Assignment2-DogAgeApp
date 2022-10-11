//
//  DogAgeApp.swift
//  DogAge
//
//  Created by Madi Lumsden on 10/11/22.
//

import SwiftUI

@main
struct DogAgeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
