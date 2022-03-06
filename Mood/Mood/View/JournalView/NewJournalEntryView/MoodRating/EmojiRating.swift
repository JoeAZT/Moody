//
//  EmojiRating.swift
//  Mood
//
//  Created by Joseph Taylor on 06/01/2022.
//

import SwiftUI

struct EmojiRating: View {
    
    @Binding var selectedMood: JournalEntryModel.Mood
//    @Binding var moodValue: JournalEntryModel.moodValue
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("ModeColor"))
                .shadow(color: .black.opacity(0.5), radius: 2, x: 1, y: 2)
            VStack {
                Text("Use an emoji to rate your mood:")
                    .bold()
                HStack {
                    EmojiButton(mood: .vsad, isSelected: selectedMood == .vsad, onTap: {
                        selectedMood = .vsad
                    })
                    EmojiButton(mood: .sad, isSelected: selectedMood == .sad, onTap: {
                        selectedMood = .sad
                    })
                    EmojiButton(mood: .ok, isSelected: selectedMood == .ok, onTap: {
                        selectedMood = .ok
                    })
                    EmojiButton(mood: .good, isSelected: selectedMood == .good, onTap: {
                        selectedMood = .good
                    })
                    EmojiButton(mood: .vgood, isSelected: selectedMood == .vgood, onTap: {
                        selectedMood = .vgood
                    })
                }
                .font(.system(size: 36))
            }
            .padding()
        }
        .padding()
    }
}
