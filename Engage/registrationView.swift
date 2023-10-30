//
//  registrationView.swift
//  Engage
//
//  Created by Aayushi Garg on 4/19/23.
//

import SwiftUI

struct registrationView: View {

    
    var body: some View {
        ZStack {
            Color(red: 243/255, green: 239/255, blue:245/255)
                .ignoresSafeArea()
            ScrollView{
                VStack{
                    
                    
                    Text("Register to Vote!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 44/255, green: 110/255, blue:73/255))
                    
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    Text("In order to register to vote, make sure to have your **SSN, address, and Driver's License number** accessible, as you will need to enter that information.")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                    
                    Text("In CA, you must be registered to vote at least 15 days before election day. You can register online at any time! You can also pre-register to vote at 16.")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                    Link("Register/Pre-Register to Vote Here!", destination: URL(string:"https://www.sos.ca.gov/elections/voter-registration")!)
                        .padding()
                        .background((Color(red: 44/255, green: 110/255, blue:73/255)))
                        .cornerRadius(10)
                        .foregroundColor(Color(red: 243/255, green: 239/255, blue:245/255))
                        .bold()
                    Text("If you are unsure of your registration status or if you've previously registered, check here.")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                    Link("Check Voter Registration Status", destination: URL(string:"https://www.nass.org/can-I-vote/voter-registration-status")!)
                        .padding()
                        .background((Color(red: 44/255, green: 110/255, blue:73/255)))
                        .cornerRadius(10)
                        .foregroundColor(Color(red: 243/255, green: 239/255, blue:245/255))
                        .bold()
                    Text("If you're not old enough to vote, but still interested in the process, consider becoming a Student Election Worker!")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                    Link("Sign up here!", destination: URL(string:"https://www.sos.ca.gov/elections/studentmockelection/student-poll-worker")!)
                        .padding()
                        .background((Color(red: 44/255, green: 110/255, blue:73/255)))
                        .cornerRadius(10)
                        .foregroundColor(Color(red: 243/255, green: 239/255, blue:245/255))
                        .bold()
                }
               
            }
        }
    }
}

struct registrationView_Previews: PreviewProvider {
    static var previews: some View {
        registrationView()
    }
}
