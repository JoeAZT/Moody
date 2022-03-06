//
//  TargetsView.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI

struct TargetsView: View {
    
    var body: some View {
        VStack {
            TargetsTopBarView()
            EmptyTargetsView()
        }
    }
}

//struct TargetsView: View {
//
////    @ObservedObject var journalEntryStore = JournalEntryStore.shared
//
//    var body: some View {
//        TabView {
//            VStack {
//                TargetsTopBarView()
//                ZStack {
//                    if journalEntryStore.sortedEntries.isEmpty {
//                      EmptyEntriesView()
//                    } else {
//                        List(journalEntryStore.sortedEntries) { entry in
//                            JournalEntryView(entry: entry)
//                        }
//                    }
//                }
//            }
//        }
//        .tabItem {
//            Image(systemName: "text.book.closed")
//        }
//    }
//}
