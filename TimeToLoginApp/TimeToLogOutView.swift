//
//  TimeToLogOutView.swift
//  TimeToLoginApp
//
//  Created by Jorgen Shiller on 21.12.2022.
//

import SwiftUI

struct TimeToLogOutView: View {
    
    @StateObject private var timer = TimerView()
    @EnvironmentObject private var userManager: UserManager
    @State private var buttonIsActive = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()

                Button("Log Out") {
                    DataManager.shared.clear(userManager: userManager)
                }.disabled(!buttonIsActive)
                    .font(.title3)
            }.padding()
            
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text(timer.counter != 0 ? "\(timer.counter)" : "You can Log Out now")
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            
            Spacer()
            
            VStack {
                Spacer()
                
                ButtonView(title: timer.buttonTitle, color: .green) {
                    timer.startTimer()
                    if timer.counter == 0 {
                        buttonIsActive = true
                        DataManager.shared.clear(userManager: userManager)
                    }
                }
                
                Spacer()

            }
            
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimeToLogOutView()
            .environmentObject(UserManager())
    }
}
