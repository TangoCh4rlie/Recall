//
//  CardItem.swift
//  Recall
//
//  Created by Elouan Reymond on 04/09/2024.
//

import SwiftUI

struct CardItem: View {
    @Binding var review: Review
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.pastelPink)
            .overlay {
                Text(review.title)
            }
            .font(.headline)
            .foregroundStyle(.black)
            .frame(width: 150, height: 150)
            .padding(3)
    }
}

#Preview {
    CardItem(review: .constant(review1))
}
