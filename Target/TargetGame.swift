//
//  TargetGame.swift
//  Target
//
//  Created by junior leoncio on 07/05/23.
//

import Foundation
import SwiftUI

class TargetGame: ObservableObject {
    
    @Published var speed = 0
    @Published var numberGenerate = 0
    @Published var isEditing = false
    @Published var isPresenting = false
    @Published var result = 0
    
    func generate() {
        numberGenerate = Int.random(in: 1...100)
        speed = 0
    }
    
    func verify() {
        if speed == numberGenerate {
            isPresenting = true
            result = 1
        } else {
            isPresenting = true
            result = 2
        }
    }
}
