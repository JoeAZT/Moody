//
//  EndNotches.swift
//  Mood
//
//  Created by Joseph Taylor on 01/03/2022.
//

import SwiftUI

struct EndNotches: View {

    var emoji: String
    
    var body: some View {
        
        ZStack {
            Circle()
                .foregroundColor(.black)
                .opacity(0.5)
                .frame(width: 30, height: 30)
            Text(emoji)
        }
    }
}
