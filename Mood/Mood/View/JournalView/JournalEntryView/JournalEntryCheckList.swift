//
//  JournalEntryCheckList.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI

struct JournalEntryCheckList: View {
    
    var entry: JournalEntryModel
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: 120, height: 50, alignment: .center)
                .cornerRadius(10)
                .opacity(0.1)
            
            VStack {
                HStack {
                    Text("🏋️")
                        .opacity(entry.exercise == true ? 1:0.2)
                    Text("🛌")
                        .opacity(entry.sleep == true ? 1:0.2)
                    Text("🚰")
                        .opacity(entry.water == true ? 1:0.2)
                    Text("🍎")
                        .opacity(entry.fruit == true ? 1:0.2)
                }
                HStack {
                    Text("📚")
                        .opacity(entry.reading == true ? 1:0.2)
                    Text("📈")
                        .opacity(entry.productivity == true ? 1:0.2)
                    Text("🧘")
                        .opacity(entry.meditation == true ? 1:0.2)
                    Text("☀️")
                        .opacity(entry.outside == true ? 1:0.2)
                }
            }
        }
    }
    
}
