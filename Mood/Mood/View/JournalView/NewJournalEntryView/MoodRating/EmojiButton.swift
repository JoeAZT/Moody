//
//  EmojiButton.swift
//  Mood
//
//  Created by Joseph Taylor on 07/01/2022.
//

import SwiftUI

struct EmojiButton: View {
    
    let mood: JournalEntryModel.Mood
    let isSelected: Bool
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            Text(mood.rawValue)
                .opacity(isSelected ? 1 : 0.5)
        }
        .padding(5)
    }
}
