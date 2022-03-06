//
//  CompleteTargetButton.swift
//  Mood
//
//  Created by Joseph Taylor on 30/01/2022.
//

import SwiftUI

struct CompleteTargetButton: View {
    //dismiss
    var onTap: () -> Void
    
    var body: some View {
        
        Button {
            onTap()

        } label: {
            Text("Complete Target")
                .bold()
                .padding()
                .foregroundColor(.white)
                .background(.linearGradient(colors: [.pink, .pink.opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(10)
        }
        .shadow(color: .black.opacity(0.5), radius: 3, x: 1, y: 2)
    }
}
