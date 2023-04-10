//
//  DrivingAppApp.swift
//  DrivingApp
//
//  Created by user232149 on 4/3/23.
//

import SwiftUI

@main
struct DrivingAppApp: App {
    
    @StateObject private var dataController = DataController()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
