//
//  CheckListButton.swift
//  Mood
//
//  Created by Joseph Taylor on 07/01/2022.
//

import SwiftUI

struct CheckListButton: View {
    
    var buttonTitle: String
    var isSelected: Bool = false
    var onTap: () -> Void
    
    var body: some View {
        
        Button {
            onTap()
        } label: {
            
            ZStack {
            RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(isSelected ? Color("ButtonSetColor") : .gray.opacity(0.1))
                    .shadow(color: .black.opacity(0.5), radius: 1, x: 1, y: 1)
            Text(buttonTitle)
                    .padding(.vertical,5)
            }
            .opacity(isSelected ? 1 : 0.5)
        }
    }
}
