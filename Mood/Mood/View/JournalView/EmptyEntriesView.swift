//
//  EmptyEntriesView.swift
//  Mood
//
//  Created by Joseph Taylor on 23/01/2022.
//

import SwiftUI

struct EmptyEntriesView: View {
    
    @State var showNewEntry: Bool = false
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("ModeColorText")
                                    .opacity(0.1))
                .padding()
            VStack {
                Spacer()
                Image(systemName: "books.vertical")
                    .font(.system(size: 80))
                    .shadow(color: .black, radius: 6, x: 1, y: 2)
                    .padding()
                Text("This is where your journal entries will appear.")
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 50)
                    .opacity(0.8)
                Spacer()
                Text("It's important to put into words how we felt about our day. Sometimes it can make those big problems feel a little smaller.")
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                    .opacity(0.6)
                    .padding()
                Spacer()
                
                Text("Why not start a new one now?")
                    .font(.system(size: 20))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                    .padding()
                
                Button {
                    showNewEntry.toggle()
                } label: {
                    Text("Add New Entry")
                        .bold()
                        .padding()
                        .foregroundColor(Color("ModeColor"))
                        .background(.linearGradient(colors: [.pink, .pink.opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(10)
                }
                .shadow(color: .black.opacity(1.0), radius: 3, x: 1, y: 2)
                Spacer()
            }
            .foregroundColor(.pink)
            .sheet(isPresented: $showNewEntry) {
                NewJournalEntryView()
            }
        }
    }
}
