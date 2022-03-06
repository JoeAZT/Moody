//
//  NewTargetEntryView.swift
//  Mood
//
//  Created by Joseph Taylor on 30/01/2022.
//

import SwiftUI

struct NewTargetEntryView: View {
    
    @Environment(\.dismiss) var dismiss
    @State var titleText: String = ""
    @State var bodyText: String = ""
    @ObservedObject var targetEntryStore = TargetEntryStore.shared
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ReusableTextField(titleText: "What's your goal?:", placeholderText: "I want to...", mainText: $titleText)
                    ReusableTextField(titleText: "Description of goal:", placeholderText: "I will do this by...", mainText: $bodyText)
                    AddNewEntryButton {
                        let newEntry = TargetEntryModel(
                            titleText: titleText,
                            bodyText: bodyText,
                            id: UUID().uuidString)
                        dismiss.callAsFunction()
                    }
                    .padding(.bottom)
                }
            }
            .background(Color.gray.opacity(0.1))
            .navigationTitle("New Target")
        }
    }
}
