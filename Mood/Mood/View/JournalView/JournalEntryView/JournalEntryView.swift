//
//  JournalEntryView.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI

struct JournalEntryView: View {
    
    var entry: JournalEntryModel
    
    var body: some View {
        HStack {
            JournalEntryMood(entry: entry)
            Spacer()
            JournalEntryDateAndRating(entry: entry)
            Spacer()
            JournalEntryCheckList(entry: entry)
        }
        .foregroundColor(Color("ModeColorText"))
    }
}
