//
//  ContentView.swift
//  Engage
//
//  Created by Aayushi Garg on 10/23/23.
//
import SwiftUI
@available(iOS 16.0, *)
struct ContentView: View {
    var body: some View {
        TabView {
            
            homeView()
                .tabItem {
                    
                    Label("", systemImage: "house")
                    
                }
            
            issuesView()
                .tabItem {
                    Label("", systemImage: "note.text")
                    
                }
            
            votingCenter()
            
                .tabItem {
                    Label("", systemImage: "globe.americas")
                    
                }
            
            registrationView()
                .tabItem {
                    Label("", systemImage: "checkmark.seal.fill")
                    
                }
            
            whyView()
                .tabItem {
                    Label("", systemImage: "gearshape")
                    
                }
        }
    }
    
}
