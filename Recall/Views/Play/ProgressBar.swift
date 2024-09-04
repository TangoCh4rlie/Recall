//
//  ProgressBar.swift
//  Recall
//
//  Created by Elouan Reymond on 03/09/2024.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var progress: Int
    var total: Int
    
    var body: some View {
        ProgressView(value: Double(progress), total: Double(total))
            .padding()
    }
}

#Preview {
    ProgressBar(progress: .constant(1), total: 2)
}
