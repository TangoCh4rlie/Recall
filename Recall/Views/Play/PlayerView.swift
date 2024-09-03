//
//  PlayerView.swift
//  Recall
//
//  Created by Elouan Reymond on 03/09/2024.
//

import SwiftUI

struct PlayerView: View {
    @State private var progress: Int = 0 {
        didSet {
            isFaceUp = false
        }
    }
    @State private var isFaceUp: Bool = false
    @Binding var cards: [Card]
    
    var body: some View {
        VStack {
            ProgressBar(progress: $progress, cards: $cards)
            Spacer()
            CardView(isFaceUp: $isFaceUp, card: $cards[Array<Card>.Index(progress)])
            Spacer()
            ActionsButtons(progress: $progress, isFaceUp: $isFaceUp)
        }
        .onChange(of: progress) {
            isFaceUp = false
        }
    }
}

#Preview {
    PlayerView(cards: .constant(testCards))
}
