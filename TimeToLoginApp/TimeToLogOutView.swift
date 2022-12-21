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
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            
            Spacer()
            
            VStack {
                Spacer()
                
                Button("Start") {
                    timer.startTimer()
                }
                
                Spacer()
                
                Button("LogOut") {
                    DataManager.shared.clear(userManager: userManager)
                }
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
