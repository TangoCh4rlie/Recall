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
    @Binding var review: Review
    
    var total: Int {
        return review.cards.count
    }
    
    var body: some View {
        if progress < total {
            VStack {
                ProgressBar(progress: $progress, total: total)
                HStack {
                    Text("Question : \(progress) / \(total)")
                    Spacer()
                    
                }
                .padding()
                Spacer()
                
                CardView(isFaceUp: $isFaceUp, card: $review.cards[progress])
                
                Spacer()
                ActionsButtons(progress: $progress, isFaceUp: $isFaceUp)
            }
            .onChange(of: progress) {
                isFaceUp = false
            }
        } else {
            ContentView()
        }
    }
}

#Preview {
    PlayerView(review: .constant(review1))
}
