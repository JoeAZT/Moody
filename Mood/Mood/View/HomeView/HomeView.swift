//
//  HomeView.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI
import IrregularGradient
 
struct HomeView: View {
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Welcome back...")
                    .font(.title2)
                    .bold()
                    .padding(.vertical)
                
                HStack {
                    RatingChart()
                    HistoricChart()
                }
                .frame(height: UIScreen.screenHeight/4.1)
                MoodChart()
                DailyTargets()
            }
            .foregroundColor(.white)
        }
        .padding(.horizontal)
        .padding(.bottom, 10)
        .embedInBackground()
    }
}

struct GradientBackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
                .irregularGradient(colors: [.black, .pink, .black, .black, .black], backgroundColor: .black, speed: 30.0)
                .ignoresSafeArea(.all, edges: .all)
            content
        }
    }
}

extension View {
    func embedInBackground() -> some View {
        self.modifier(GradientBackgroundModifier())
    }
}

