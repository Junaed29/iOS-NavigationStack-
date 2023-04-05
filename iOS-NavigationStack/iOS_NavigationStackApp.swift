//
//  iOS_NavigationStackApp.swift
//  iOS-NavigationStack
//
//  Created by Junaed Muhammad Chowdhury on 4/4/23.
//

import SwiftUI

@main
struct iOS_NavigationStackApp: App {
    @StateObject var environmentObject = EnvironmentClass()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(environmentObject)
        }
    }
}
