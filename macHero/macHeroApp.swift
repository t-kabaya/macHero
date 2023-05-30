//
//  macHeroApp.swift
//  macHero
//
//  Created by taiki.kabaya on 2023/05/30.
//

import SwiftUI

@main
struct macHeroApp: App {
    @State var currentNumber: String = "1"

    var body: some Scene {
        MenuBarExtra(currentNumber, systemImage: "\(currentNumber).circle") {
            // 3
            Button("One") {
                currentNumber = "1"
            }
            Button("Two") {
                currentNumber = "2"
            }
            Button("Three") {
                currentNumber = "3"
            }
            .keyboardShortcut("3")
            Divider()

            Button("Quit") {

                NSApplication.shared.terminate(nil)

            }.keyboardShortcut("q")
        }
    }
}
