//
//  NewJournalEntrySlider.swift
//  Mood
//
//  Created by Joseph Taylor on 02/01/2022.
//

import SwiftUI

struct NewJournalEntrySlider: View {
    
    @Binding var rating: Double
    
    var body: some View {
        
        HStack {
            Text("0")
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [.pink.opacity(0.2), .pink]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .mask(Slider(value: $rating, in: 0.0...10.0))
                
                Slider(value: $rating, in: 0.0...10.0)
                    .opacity(0.05)
            }
            Text("10")
        }
    }
}
