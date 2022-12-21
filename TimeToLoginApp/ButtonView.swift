//
//  ButtonView.swift
//  TimeToLoginApp
//
//  Created by Jorgen Shiller on 21.12.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
        }.frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(20)
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Some Action", color: .red, action: {})
    }
}

