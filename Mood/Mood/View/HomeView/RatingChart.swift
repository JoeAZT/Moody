//
//  RatingChart.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI

struct RatingChart: View {
    
    @State var rating: Double = 0.0
    var fontSize = UIScreen.screenHeight/65
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .opacity(0.075)
            VStack(alignment: .leading) {
                Text("Average rating:")
                ZStack {
                    Circle()
                        .stroke(lineWidth: fontSize)
                        .foregroundColor(.black)
                        .opacity(0.2)
                        .shadow(radius: 5)
                    Text(String(format: "%.1f", rating))
                        .font(.largeTitle)
                        .bold()
                    Circle()
                        .trim(from: 0.0, to: CGFloat(self.rating / 10))
                        .stroke(style: StrokeStyle(lineWidth: fontSize, lineCap: .round, lineJoin: .round))
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.2), radius: 3, x: 0, y: 3)
                        .animation(.easeInOut(duration: 2.0))
                        .rotationEffect(.degrees(-90))
                        .onAppear {
                            let rating =  JournalEntryStore.shared.averageOfPastSevenRating
                            if rating <= 0 {
                                self.rating = 5.0
                            } else {
                                self.rating = rating
                            }
                        }
                }
                .padding()
            }
            .padding()
        }
    }
}
