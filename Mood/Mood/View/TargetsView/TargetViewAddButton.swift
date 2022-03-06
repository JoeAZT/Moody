//
//  TargetViewButton.swift
//  Mood
//
//  Created by Joseph Taylor on 30/01/2022.
//

import SwiftUI

struct TargetViewAddButton: View {
    
    @State var showTargetInfoView: Bool = false
    
    var body: some View {
        
        VStack {
            Button {
                showTargetInfoView.toggle()
            } label: {
                Image(systemName: "plus.circle.fill")
                    .font(.title)
                    .foregroundColor(.pink)
            }
        }
        .sheet(isPresented: $showTargetInfoView) {
            NewTargetEntryView()
        }
    }
}
