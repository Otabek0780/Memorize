

//func simpleFunc(closure: () -> ()) {
//
//    print("simpleFunction ")
//    closure()
//}


import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemory()
    
    static func createMemory() -> MemoryGame<String> {
        let emojis = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    
    
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
//        objectWillChange.send()
        model.choose(card: card)
    }
    
}

