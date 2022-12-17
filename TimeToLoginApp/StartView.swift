//
//  StartView.swift
//  TimeToLoginApp
//
//  Created by Jorgen Shiller on 18.12.2022.
//

import SwiftUI

import SwiftUI

struct StartView: View {
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        Group {
             if userManager.isRegister {
                ContentView()
            } else {
                RegistrationView()
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
            .environmentObject(UserManager())
    }
}
