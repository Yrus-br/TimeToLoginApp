//
//  TimerView.swift
//  TimeToLoginApp
//
//  Created by Jorgen Shiller on 17.12.2022.
//

import Foundation
import Combine

class TimerView: ObservableObject {
    let objectWillChange = PassthroughSubject<TimerView, Never>()
    var counter = 3
    var buttonTitle = "Start"
    var timer: Timer?
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        buttonDidTapped()
    }
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttonTitle = "Reset"
        }
        
        objectWillChange.send(self)
    }
    
    private func buttonDidTapped() {
        if buttonTitle == "Reset" {
            counter = 3
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait..."
        }
        
        objectWillChange.send(self)
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
