//
//  HomeView.swift
//  Recall
//
//  Created by Elouan Reymond on 04/09/2024.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: ContentViewModel
    
    var body: some View {
        NavigationStack {
            Text("Suggestion")
                .font(.title)
            
            Spacer()
            CardRow(reviews: .constant([review1, review2, review3, review4, review5]), viewModel: viewModel)
                .padding()
        }
    }
}

#Preview {
    let viewModel = ContentViewModel()
    return HomeView(viewModel: viewModel)
}
