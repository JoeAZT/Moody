//
//  EmptyTargetsView.swift
//  Mood
//
//  Created by Joseph Taylor on 30/01/2022.
//

import SwiftUI

struct EmptyTargetsView: View {
    
    @State var showNewEntry: Bool = false
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("ModeColorText")
                .opacity(0.1))
                .padding()
            VStack {
                Spacer()
                Image(systemName: "scope")
                    .font(.system(size: 80))
                    .shadow(color: .black, radius: 6, x: 1, y: 2)
                    .padding()
                Text("This is where your targets will appear.")
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 50)
                    .opacity(0.8)
                
                Spacer()
                Text("Targets help us break down those big problems into smaller things we can work towards each day.")
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                    .opacity(0.6)
                    .padding()
                
                Spacer()
                Text("Why not set your first target now?")
                    .font(.system(size: 20))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                    .padding()
                
                Button {
                    showNewEntry.toggle()
                } label: {
                    Text("Add New Target")
                        .bold()
                        .padding()
                        .foregroundColor(Color("ModeColor"))
                        .background(.linearGradient(colors: [.pink, .pink.opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(10)
                }
                .shadow(color: .black, radius: 3, x: 1, y: 2)
                Spacer()
            }
            .foregroundColor(.pink)
            .sheet(isPresented: $showNewEntry) {
                NewTargetEntryView()
            }
        }
    }
}
