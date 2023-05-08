//
//  TargetApp.swift
//  Target
//
//  Created by junior leoncio on 07/05/23.
//

import SwiftUI

@main
struct TargetApp: App {
    @StateObject var targetGame = TargetGame()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(targetGame)
        }
    }
}
