//
//  SliderView.swift
//  Mood
//
//  Created by Joseph Taylor on 06/01/2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var entryRatingValue: Double
    @Binding var entryReflectionText: String
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("ModeColor"))
                .shadow(color: .black.opacity(0.5), radius: 2, x: 1, y: 2)
            VStack {
                NewJournalEntryViewSliderTitle(rating: $entryRatingValue)
                NewJournalEntrySlider(rating: $entryRatingValue)
            }
            .padding()
        }
        .padding()
    }
}
