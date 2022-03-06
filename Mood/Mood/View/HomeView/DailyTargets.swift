//
//  DailyTargets.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI

struct DailyTargets: View {
    
    @State var scrollPosition = 200.0
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white.opacity(0.075))
            VStack(alignment: .leading) {
                Text("Your daily targets:")
                ScrollView() {
                    VStack {
                        ForEach(0..<7) {_ in
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white.opacity(0.1))
                                HStack {
                                    Text("This is a goal for you to do")
                                    Spacer()
                                    Image(systemName: "square")
                                }
                                .padding()
                            }
                        }
                    }
                    .offset(y: scrollPosition)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 2.0)) {
                            scrollPosition = 0.0
                        }
                    }
                }
            }
            .padding()
        }
        .frame(height: UIScreen.screenHeight/3.1)
    }
}
