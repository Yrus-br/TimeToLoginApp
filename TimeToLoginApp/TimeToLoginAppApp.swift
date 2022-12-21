//
//  TimeToLoginAppApp.swift
//  TimeToLoginApp
//
//  Created by Jorgen Shiller on 17.12.2022.
//

import SwiftUI

@main
struct StateAndDataFlow: App {
    private let user = DataManager.shared.fetchUser()
    
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(UserManager(user: user))
        }
    }
}
