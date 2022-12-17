//
//  ContentView.swift
//  TimeToLoginApp
//
//  Created by Jorgen Shiller on 17.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var timer = TimerView()
    
    var body: some View {
        
        VStack(spacing: 100) {
            
            Spacer()
            
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            ButtonView(timer: timer)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonView: View {
    @ObservedObject var timer: TimerView
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.green)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}
