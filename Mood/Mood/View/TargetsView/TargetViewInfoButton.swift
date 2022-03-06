//
//  TargetViewInfoButton.swift
//  Mood
//
//  Created by Joseph Taylor on 24/02/2022.
//

import SwiftUI

struct TargetViewInfoButton: View {
    
    @State var showTargetInfoView: Bool = false
    
    var body: some View {
        
        VStack {
            Button {
                showTargetInfoView.toggle()
            } label: {
                Image(systemName: "info.circle.fill")
                    .font(.title)
                    .foregroundColor(.pink)
            }
        }
        .sheet(isPresented: $showTargetInfoView) {
            TargetInfoView()
        }
    }
}
