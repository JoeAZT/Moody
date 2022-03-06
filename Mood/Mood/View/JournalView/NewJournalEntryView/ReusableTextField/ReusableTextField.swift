//
//  ReflectionText.swift
//  Mood
//
//  Created by Joseph Taylor on 06/01/2022.
//

import SwiftUI

struct ReusableTextField: View {
    
    @State var titleText: String
    @State var placeholderText: String
    @Binding var mainText: String
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("ModeColor"))
                .shadow(color: .black.opacity(0.5), radius: 2, x: 1, y: 2)
            VStack(alignment: .leading) {
                Text(titleText)
                    .bold()
                
                ZStack(alignment: .topLeading) {
                    TextEditor(text: $mainText)
                        .frame(height: 200, alignment: .leading)
                        .cornerRadius(5)
                    
                    Text(placeholderText)
                        .opacity(mainText == "" ? 0.3 : 0.0)
                        .padding(9)
                }
            }
            .padding()
        }
        .padding()
    }
}
