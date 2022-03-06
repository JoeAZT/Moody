//
//  JournalViewInfoButton.swift
//  Mood
//
//  Created by Joseph Taylor on 24/02/2022.
//

import SwiftUI

struct JournalViewInfoButton: View {
    
    @State var showNewEntry: Bool = false
    
    var body: some View {
        
        VStack {
            Button {
                showNewEntry.toggle()
            } label: {
                Image(systemName: "info.circle.fill")
                    .font(.title)
                    .foregroundColor(.pink)
            }
        }
        .sheet(isPresented: $showNewEntry) {
            NewJournalEntryView()
        }
    }
}
