//
//  TimeToLoginAppApp.swift
//  TimeToLoginApp
//
//  Created by Jorgen Shiller on 17.12.2022.
//

import SwiftUI

@main
struct TimeToLoginAppApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
