//
//  whyView.swift
//  Engage
//
//  Created by Aayushi Garg on 10/23/23.
//

import SwiftUI

struct whyView: View {
    @State private var fact = ""
    @State private var factList = ["The first election to use a voting machine was in 1892.","George Washington was the only president who did not represent a political party.","Election Day wasn’t on a fixed day until the mid-19th century."]
    var body: some View {
        ZStack {
            Color(red: 243/255, green: 239/255, blue:245/255)
                .ignoresSafeArea()
            ScrollView {
                VStack{
                    Text("Why Engage?")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 44/255, green: 110/255, blue:73/255))
                        .padding(10)
                    Text("This app was created to be an accessible guide for those who are unfamiliar with the voting process. First and foremost, the aim of Engage is to provide people a safe & unbiased way to get information on what they're voting on, as well as the whole process. In CA, it's legal to have your phone out during the voting process, so why not take advantage of that in order to make an informed decision? I was inspired to create this app after volunteering for the 2022 midterms as a student election worker, and witnessing the shame and fear that many young voters felt because they felt they weren't smart enough to vote. Currently, the app has information for the San Fernando Valley, located in district CA-32, and information based off of the 2022 midterm elections, but I hope to be able to expand it in the future, especially with the 2024 elections coming up!")
                        .font(.body)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                        .padding()
                    Button("Click here for a fun fact about the voting process!") {
                        fact = factList.randomElement() ?? ""
                    }
                    .padding()
                    .background((Color(red: 44/255, green: 110/255, blue:73/255)))
                    .cornerRadius(10)
                    .foregroundColor(Color(red: 243/255, green: 239/255, blue:245/255))
                    .bold()
                    Text(fact)
                        .foregroundColor((Color(red: 44/255, green: 110/255, blue:73/255)))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                }
            }
        }
    }
}

struct whyView_Previews: PreviewProvider {
    static var previews: some View {
        whyView()
    }
}

//This app was created to be an accessible guide for those who are unfamiliar with the voting process. First and foremost, the aim of Engage is to provide people a safe & unbiased way to get information on what they're voting on, as well as the whole process.  Sometimes, it's also tough to find where your local polling centers are. Thus, I decided to create an app which will consolidate all of that information for voters, so that we all have no boundaries blocking us from being civically minded and doing our duty as citizens. In CA, it's legal to have your phone out during the voting process, so why not take advantage of that? I was inspired to create this app after volunteering for the 2022 midterms as a student election worker, and witnessing the shame and fear that many young voters felt because they felt they weren't informed enough or smart enough to vote. Currently, the app has information for the San Fernando Valley, located in district CA-32, and information based off of the 2022 midterm elections, but I hope to be able to expand it in the future!"
