//
//  MoodChart.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI

struct MoodChart: View {
    
    // Do a slider looking view for the main screen that shows how happy youve been using the emoji that is the average of all the emotions?
    // emoji should be different depending on the position
    // larger cylinder shape with emojis inside of the bar, bar to load across with the notch emoji
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white.opacity(0.075))
            VStack(alignment: .leading, spacing: 5) {
                Text("Your mood this week:")
                MoodChartNotch()
                    .padding(.top, 10)
            }
            .padding()
        }
    }
}
