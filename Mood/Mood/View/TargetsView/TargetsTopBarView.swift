//
//  TargetsTopBarView.swift
//  Mood
//
//  Created by Joseph Taylor on 30/01/2022.
//

import SwiftUI

struct TargetsTopBarView: View {
    
    var body: some View {
        
        HStack {
            TargetViewInfoButton()
            Spacer()
            Text("Targets")
                .foregroundColor(.pink)
                .font(.largeTitle)
                .bold()
            Spacer()
            TargetViewAddButton()
        }
        .padding()
    }
}
