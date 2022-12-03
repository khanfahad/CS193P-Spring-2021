//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Fahad Khan on 12/1/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject  {
    static let  cards = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎️", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍️", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards:  6) { pairIndex in
            EmojiMemoryGame.cards[pairIndex]
        }
    }
        
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    func choose (_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}

