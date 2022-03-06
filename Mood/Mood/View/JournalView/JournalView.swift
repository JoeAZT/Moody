//
//  JournalView.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI

struct JournalView: View {
    
    @ObservedObject var journalEntryStore = JournalEntryStore.shared
    
    var body: some View {
        TabView {
            VStack {
                JournalTopBarView()
                ZStack {
                    if journalEntryStore.sortedEntries.isEmpty {
                      EmptyEntriesView()
                    } else {
                        List(journalEntryStore.sortedEntries) { entry in
                            JournalEntryView(entry: entry)
                        }
                    }
                }
            }
        }
        .tabItem {
            Image(systemName: "text.book.closed")
        }
    }
}

//struct JournalView_Previews: PreviewProvider {
//    static var previews: some View {
//        JournalView()
//    }
//}

