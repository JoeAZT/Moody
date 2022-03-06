//
//  JournalEntryDateAndText.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI

struct JournalEntryDateAndRating: View {
    
    var entry: JournalEntryModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(entry.date, style: .date)
                .font(.system(size: 12))
            Text("Rating: \(String(format: "%.1f", entry.rating))")
                .font(.system(size: 20))
                .bold()
        }
        
    }
    
}
