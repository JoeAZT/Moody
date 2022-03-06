//
//  TargetInfoView.swift
//  Mood
//
//  Created by Joseph Taylor on 28/02/2022.
//

import SwiftUI

struct TargetInfoView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        VStack {
            Image(systemName: "info.circle")
                .foregroundColor(.pink)
        }
    }
}
