//
//  RegistrationView.swift
//  TimeToLoginApp
//
//  Created by Jorgen Shiller on 18.12.2022.
//

import SwiftUI

import SwiftUI

struct RegistrationView: View {
    @State private var name = ""
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            userManager.name = name
            userManager.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
