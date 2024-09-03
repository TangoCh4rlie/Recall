//
//  ProgressBar.swift
//  Recall
//
//  Created by Elouan Reymond on 03/09/2024.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var progress: Int
    @Binding var cards: [Card]
    
    var body: some View {
        ProgressView(value: Double(progress), total: Double(cards.count))
            .padding()
    }
}

#Preview {
    ProgressBar(progress: .constant(1), cards: .constant(testCards))
}
