//
//  esaApp.swift
//  esa
//  
//  Created by TakashiUshikoshi on 2022/04/11
//  
//

import SwiftUI

@main
struct esa: App {
//    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
