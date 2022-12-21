//
//  StartView.swift
//  TimeToLoginApp
//
//  Created by Jorgen Shiller on 18.12.2022.
//

import SwiftUI

struct StartView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        Group {
            if userManager.user.isRegistered {
                TimeToLogOutView()
            } else {
                RegistrationView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
            .environmentObject(UserManager())
    }
}

