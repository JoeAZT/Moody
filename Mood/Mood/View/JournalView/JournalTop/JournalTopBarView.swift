//
//  JournalTopBarView.swift
//  Mood
//
//  Created by Joseph Taylor on 23/01/2022.
//

import SwiftUI

struct JournalTopBarView: View {
    
    var body: some View {
        
        HStack {
            JournalViewInfoButton()
            Spacer()
            Text("Journal")
                .foregroundColor(.pink)
                .font(.largeTitle)
                .bold()
            Spacer()
            JournalViewButton()
        }
        .padding()
    }
}
