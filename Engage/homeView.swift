//
//  homeView.swift
//  Engage
//
//  Created by Aayushi Garg on 10/23/23.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        ZStack {
            Color(red: 243/255, green: 239/255, blue:245/255)
                .ignoresSafeArea()
            VStack{
                Text("Welcome to Engage!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 44/255, green: 110/255, blue:73/255))
                Text("Click around the app to find different ways in which you can engage with the voting process!")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                Image("logo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
