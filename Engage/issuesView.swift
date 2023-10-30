//
//  issuesView.swift
//  Engage
//
//  Created by Aayushi Garg on 10/23/23.
//

import SwiftUI


struct issuesView: View {
    @State private var selections = "Mayoral Race"
    let issues = ["Mayoral Race", "Ballot Issues", "House of Representatives"]
    var body: some View {
            ZStack {
                Color(red: 243/255, green: 239/255, blue:245/255)
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        Text("The Issues")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 44/255, green: 110/255, blue:73/255))
                        Text("In the 2022 midterms, there were a multitude of canditates and issues on the ballot. Select what you want to learn more about!.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                        Link("If you would like a full-fledged voter guide, click here.", destination: URL(string:"https://www.latimes.com/yourballot")!)
                            .padding()
                            .background((Color(red: 44/255, green: 110/255, blue:73/255)))
                            .cornerRadius(10)
                            .foregroundColor(Color(red: 243/255, green: 239/255, blue:245/255))
                            .bold()
                        
                        Picker("Select a topic!", selection: $selections) {
                            ForEach(issues, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.menu)
                        
                        if selections == "Mayoral Race" {
                            Text("Mayoral Race")
                                .font(.title3)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            Text("In Los Angeles, there are two mayoral candidates. Firstly, **Karen Bass**, a democratic candidate, is a former social worker, running on the platform of addressing homelessness and ending encampments around elementary schools. Secondly, **Rick Caruso**, an independent candidate, is a real estate mogul, running on the platform of ending homelessness and public safety.")
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            HStack{
                                VStack(alignment: .center){
                                    Image("karen")
                                        .resizable()
                                        .frame(width: 150.0, height: 150.0)
                                    Link("Click here to learn more about Karen Bass.", destination: URL(string:"https://karenbass.com/")!)
                                        .multilineTextAlignment(.center)

                                    
                                }
                                VStack(alignment: .center){
                                    Image("rick")
                                        .resizable()
                                        .frame(width: 150.0, height: 150.0)
                                    Link("Click here to learn more about Rick Caruso.", destination: URL(string:"https://caruso.com/about/rick-caruso/")!)
                                        .multilineTextAlignment(.center)
                                }
                            }
                            
                        } else if selections == "Ballot Issues" {
                            
                            Text("Ballot Issues to Watch")
                                .font(.title3)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            Text("Click on any issue to be directed to learn more!")
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            Link("**Prop 1**: Whether or not to enshrine abortion in the CA constitution.", destination: URL(string:"https://lao.ca.gov/BallotAnalysis/Proposition?number=1&year=2022")!)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            Link("**Prop 26**: Whether or not to allow sports betting at tribal casinos", destination: URL(string:"https://lao.ca.gov/BallotAnalysis/Proposition?number=26&year=2022")!)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            Link("**Prop 27**: Whether or not to allow online sports betting.", destination: URL(string:"https://lao.ca.gov/BallotAnalysis/Proposition?number=27&year=2022")!)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            Link("**Prop 28**: Whether or not to increase funding for arts and music education", destination: URL(string:"https://lao.ca.gov/BallotAnalysis/Proposition?number=28&year=2022")!)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            Link("**Prop 29**: Whether or not to reform laws surrounding kidney dialysis.", destination: URL(string:"https://lao.ca.gov/BallotAnalysis/Proposition?number=29&year=2022")!)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            Link("**Prop 30**: Whether or not to enact a wealth tax for clean air programs.", destination: URL(string:"https://lao.ca.gov/BallotAnalysis/Proposition?number=30&year=2022")!)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            Link("**Prop 31**: Whether or not to uphold a ban on flavored tobacco products.", destination: URL(string:"https://lao.ca.gov/BallotAnalysis/Proposition?number=31&year=2022")!)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                         

                        } else {
                            Text("House of Representatives Election: District CA-32")
                                .font(.title3)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            Text("In District CA-32, there are two candidates in the runoffs. Firstly, **Brad Sherman** (Democrat), a former accountant and current politician, is running on the platform of protecting our environment with the Green New Deal, LGBTQ+ rights, and protecting animal rights. Secondly, **Lucie Lapointe Volotzky** (Republican), a business owner, is  running on the platform of ending illegal immigration, homelessness, and lowering inflation.")
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing])
                                .foregroundColor(Color(red: 35/255, green: 12/255, blue:51/255))
                            HStack{
                                VStack(alignment: .center){
                                    Image("brad")
                                        .resizable()
                                        .frame(width: 150.0, height: 150.0)
                                    Link("Click here to learn more about Brad Sherman.", destination: URL(string:"https://bradsherman.com/about/")!)
                                        .multilineTextAlignment(.center)

                                    
                                }
                                VStack(alignment: .center){
                                    Image("lucie")
                                        .resizable()
                                        .frame(width: 150.0, height: 150.0)
                                    Link("Click here to learn more about Lucie Lapointe Volotzky.", destination: URL(string:"https://ballotpedia.org/Lucie_Lapointe_Volotzky")!)
                                        .multilineTextAlignment(.center)
                                }
                            }
                        }
                        
                        
                    }
                    
                
            }
            
        }
    }
    
    
    struct issuesView_Previews: PreviewProvider {
        static var previews: some View {
            issuesView()
        }
    }
}
