//
//  MoodChartNotch.swift
//  Mood
//
//  Created by Joseph Taylor on 28/02/2022.
//

import SwiftUI

struct MoodChartNotch: View {

    //BUG - when entered entry value modd indicator will leave screen depending on which value you choose

    @State var offsetPositionForMoodIndicator: Double = 0
    @State var width: Double = 50
    
    func finalMoodPosition(from geo: GeometryProxy) -> Double {
        let distance = geo.size.width / 5
        if JournalEntryStore.shared.sevenEntries.isEmpty {
            return (distance * Double(3)) - distance
        } else {
            let average = JournalEntryStore.shared.averageOfPastSevenMood
            return (average * distance) - distance
        }
        
    }

    func moodIndicator(from geo: GeometryProxy) -> String {
        let distance = geo.size.width / 5
        switch offsetPositionForMoodIndicator {
        case 0..<distance:
            return "😣"
        case distance..<(distance*2):
            return "😞"
        case (distance*2)..<(distance*3):
            return "😐"
        case (distance*3)..<(distance*4):
            return "😊"
        default:
            return "😄"
        }
    }

    var body: some View {
        GeometryReader { geo in
            
            ZStack(alignment: .leading) {
                HStack {
                    RoundedRectangle(cornerRadius: 50)
                        .frame(maxHeight: 55)
                        .foregroundColor(.black)
                        .opacity(0.4)
                        .shadow(radius: 5)
                }
                .opacity(0.5)
                 
                RoundedRectangle(cornerRadius: 50)
                    .frame(width: width, height: 55)
                    .background(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [.black.opacity(0.0), .white.opacity(0.4)]),
                            startPoint: .leading, endPoint: .trailing))
                    .clipShape(RoundedRectangle(cornerRadius: 28))
                    .padding(.horizontal)
                    .foregroundColor(.clear)

                HStack {
                    EndNotches(emoji: "😣")
                    Spacer()
                    EndNotches(emoji: "😄")
                }
                .padding(.horizontal, 10)
                .shadow(radius: 5)

                HStack {
                    Text(moodIndicator(from: geo))
                        .font(.system(size: 50))
                        .offset(x: offsetPositionForMoodIndicator)
                }
                .padding(.horizontal)
                .onAppear {
                    withAnimation(.easeInOut(duration: 2.0)) {
                        offsetPositionForMoodIndicator = max(finalMoodPosition(from: geo), 0)
                        width = offsetPositionForMoodIndicator + 54
                    }
                }
            }
        }
    }
}

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}
