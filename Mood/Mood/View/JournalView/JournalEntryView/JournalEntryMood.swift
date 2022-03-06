//
//  JournalEntryRating.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI

struct JournalEntryMood: View {
    
    var entry: JournalEntryModel
    
    var body: some View {
        
        VStack {
            Text(entry.mood.rawValue)
                .font(.system(size: 50))
        }
    }
}
