//
//  gongcha_rewardsApp.swift
//  gongcha_rewards
//
//  Created by Dhruvaa Saravanan on 2022-06-26.
//

import SwiftUI

@main
struct gongcha_rewardsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
