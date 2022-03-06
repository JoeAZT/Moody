//
//  JournalViewButton.swift
//  Mood
//
//  Created by Joseph Taylor on 02/01/2022.
//

import SwiftUI

struct JournalViewButton: View {
    
    @State var showNewEntry: Bool = false
    
    var body: some View {
        
        VStack {
            Button {
                showNewEntry.toggle()
            } label: {
                Image(systemName: "plus.circle.fill")
                    .font(.title)
                    .foregroundColor(.pink)
            }
        }
        .sheet(isPresented: $showNewEntry) {
            NewJournalEntryView()
        }
    }
}
