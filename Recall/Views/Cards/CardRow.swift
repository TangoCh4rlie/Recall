//
//  CardRow.swift
//  Recall
//
//  Created by Elouan Reymond on 04/09/2024.
//

import SwiftUI

struct CardRow: View {
    @Binding var reviews: [Review]
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        VStack {
            Text("Révisions du jour")
                .font(.headline)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(content: {
                    ForEach($reviews) { review in
                        NavigationLink(
                            destination: PlayerView(review: review)
//                                .onAppear {
//                                    viewModel.isPlayerActive = true
//                                }
//                                .onDisappear {
//                                    viewModel.isPlayerActive = false
//                                }
                        ) {
                            CardItem(review: review)
                        }
                    }
                })
            }
        }
    }
}

#Preview {
    let viewModel = ContentViewModel()
    return CardRow(reviews: .constant([review1, review2, review3, review4, review5]), viewModel: viewModel)
}
