//
//  Dice_RollerApp.swift
//  Dice-Roller
//
//  Created by Student on 4/26/25.
//

import SwiftUI

@main
struct Dice_RollerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
