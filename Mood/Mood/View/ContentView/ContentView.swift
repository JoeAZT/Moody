//
//  ContentView.swift
//  Mood
//
//  Created by Joseph Taylor on 29/12/2021.
//

import SwiftUI
import IrregularGradient

struct ContentView: View {
    
    //Tab button base color
    init() {
        UITabBar.appearance().unselectedItemTintColor = .gray
    }
    
    @State var tabNumber = 3
    
    var body: some View {
        
        TabView(selection: $tabNumber) {
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }.tag(1)
            
            JournalView()
                .tabItem {
                    Image(systemName: "text.book.closed")
                }.tag(2)
            
            HomeView()
                .tabItem {
                    Image(systemName: "brain.head.profile")
                }.tag(3)
            
            TargetsView()
                .tabItem {
                    Image(systemName: "scope")
                }.tag(4)
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                }.tag(5)
        }.accentColor(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

