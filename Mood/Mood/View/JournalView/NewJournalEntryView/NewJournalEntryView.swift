//
//  NewJournalEntryView.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI

struct NewJournalEntryView: View {
    
    @State var selectedTitles: [String] = []
    @State var entryRatingValue: Double = 0.0
    @State var entryReflectionText: String = ""
    @State var entryHappyText: String = ""
    @State var entryAchieveText: String = ""
    @State var selectedMood: JournalEntryModel.Mood = .ok
    @ObservedObject var journalEntryStore = JournalEntryStore.shared
    
    @Environment(\.dismiss) var dismiss
    let constants = Constants()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    SliderView(entryRatingValue: $entryRatingValue, entryReflectionText: $entryReflectionText)
                    ReusableTextField(titleText: "Describe your day:", placeholderText: "Today, I felt great because...", mainText: $entryReflectionText)
                    ReusableTextField(titleText: "Something that made you happy today:", placeholderText: "I was happy today because...", mainText: $entryHappyText)
                    ReusableTextField(titleText: "What did you achieve today?:", placeholderText: "Today, I...", mainText: $entryAchieveText)
                    EmojiRating(selectedMood: $selectedMood)
                    CheckList(selctedTitles: $selectedTitles)
                    AddNewEntryButton {
                        let newEntry = JournalEntryModel(
                            rating: entryRatingValue,
                            reflectionText: entryReflectionText,
                            happyText: entryHappyText,
                            achieveText: entryAchieveText,
                            id: UUID().uuidString,
                            mood: selectedMood,
                            exercise: selectedTitles.contains(constants.exercise),
                            water: selectedTitles.contains(constants.water),
                            sleep: selectedTitles.contains(constants.sleep),
                            meditation: selectedTitles.contains(constants.meditation),
                            fruit: selectedTitles.contains(constants.fruit),
                            reading: selectedTitles.contains(constants.reading),
                            productivity: selectedTitles.contains(constants.productivity),
                            outside: selectedTitles.contains(constants.outside),
                            date: Date()
                        )
                        journalEntryStore.addEntry(newEntry)
                        dismiss.callAsFunction()
                    }
                    .padding(.bottom)
                }
            }
            .background(Color.gray.opacity(0.1))
            .navigationTitle("New Entry")
        }
    }
}

