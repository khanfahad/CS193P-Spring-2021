//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Fahad Khan on 12/1/22.
//

import SwiftUI

class EmojiMemoryGame {
    static let  cards = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎️", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍️", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards:  4) { pairIndex in
            EmojiMemoryGame.cards[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
}
 
