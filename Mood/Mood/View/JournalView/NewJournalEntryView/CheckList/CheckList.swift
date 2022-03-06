//
//  CheckList.swift
//  Mood
//
//  Created by Joseph Taylor on 06/01/2022.
//

import SwiftUI

struct CheckList: View {
    
    @Binding var selctedTitles: [String]
    
    func didTapTitle(title: String) {
        if selctedTitles.contains(title) {
            selctedTitles.removeAll(where: { $0 == title})
        } else {
            selctedTitles.append(title)
        }
    }
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("ModeColor"))
                .shadow(color: .black.opacity(0.5), radius: 2, x: 1, y: 2)
            
            VStack(alignment: .leading) {
                Text("Your daily well-being checklist:")
                    .bold()
                HStack {
                    VStack {
                        CheckListButton(buttonTitle: "🏋️ Exercise", isSelected: selctedTitles.contains("🏋️ Exercise")) {
                            didTapTitle(title: "🏋️ Exercise")
                        }
                        
                        CheckListButton(buttonTitle: "🛌 Quality Sleep", isSelected: selctedTitles.contains("🛌 Quality Sleep")) {
                            didTapTitle(title: "🛌 Quality Sleep")
                        }
                        
                        CheckListButton(buttonTitle: "🚰 Water intake", isSelected: selctedTitles.contains("🚰 Water intake")) {
                            didTapTitle(title: "🚰 Water intake")
                        }
                        
                        CheckListButton(buttonTitle: "🍎 5 Fruit & Veg", isSelected: selctedTitles.contains("🍎 5 Fruit & Veg")) {
                            didTapTitle(title: "🍎 5 Fruit & Veg")
                        }
                        
                    }
                    .foregroundColor(Color("ModeColorText"))
                    
                    VStack {
                        CheckListButton(buttonTitle: "📚 Reading", isSelected: selctedTitles.contains("📚 Reading")) {
                            didTapTitle(title: "📚 Reading")
                        }
                        CheckListButton(buttonTitle: "📈 Productivity", isSelected: selctedTitles.contains("📈 Productivity")) {
                            didTapTitle(title: "📈 Productivity")
                        }
                        CheckListButton(buttonTitle: "🧘 Medititaion", isSelected: selctedTitles.contains("🧘 Medititaion")) {
                            didTapTitle(title: "🧘 Medititaion")
                        }
                        CheckListButton(buttonTitle: "☀️ Go Outside", isSelected: selctedTitles.contains("☀️ Go Outside")) {
                            didTapTitle(title: "☀️ Go Outside")
                        }
                    }
                    .foregroundColor(Color("ModeColorText"))
                }
            }
            .padding()
        }
        .padding()
        
    }
    
}
