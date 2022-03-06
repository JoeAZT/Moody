//
//  NewJournalEntryViewSliderTitle.swift
//  Mood
//
//  Created by Joseph Taylor on 05/01/2022.
//

import SwiftUI

struct NewJournalEntryViewSliderTitle: View {
    
    @Binding var rating: Double
    
    var body: some View {
        
        HStack {
            Text("How was your day?:")
                .bold()
            Spacer()
            Text(String(format: "%.1f", rating))
                .bold()
        }
    }
}
