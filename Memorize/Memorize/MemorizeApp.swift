//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Fahad Khan on 11/8/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
