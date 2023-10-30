//
//  votingCenter.swift
//  Engage
//
//  Created by Aayushi Garg on 10/23/23.
//
import SwiftUI
import MapKit


struct votingCenter: View {
    let center1 = CLLocationCoordinate2D(latitude: 34.2516187, longitude: -118.5510946)
    let center2 = CLLocationCoordinate2D(latitude: 34.2400667, longitude: -118.5262047)
    let center3 = CLLocationCoordinate2D(latitude: 34.2579359, longitude: -118.6069195)
    let center4 = CLLocationCoordinate2D(latitude: 34.2053212, longitude: -118.615272)
    let center5 = CLLocationCoordinate2D(latitude: 34.2334163, longitude: -118.5894883)
    let center6 = CLLocationCoordinate2D(latitude: 34.1854252, longitude: -118.5734981)
    let center7 = CLLocationCoordinate2D(latitude: 34.2253175, longitude: -118.5473324)
    let center8 = CLLocationCoordinate2D(latitude: 34.1851893, longitude: -118.6012848)
    let center9 = CLLocationCoordinate2D(latitude: 34.2193691, longitude: -118.5700066)
    let center10 = CLLocationCoordinate2D(latitude: 34.2024308, longitude: -118.5626769)
    var body: some View {
        ZStack {
            Color(red: 243/255, green: 239/255, blue:245/255)
                .ignoresSafeArea()
            VStack{
                Text("Find polling centers in your area!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 44/255, green: 110/255, blue:73/255))
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Map of District CA-32!")
                    .font(.title2)
                    .foregroundColor(Color(red: 44/255, green: 110/255, blue:73/255))
                    .multilineTextAlignment(.center)
                Map(){
                    Marker("Nobel Charter Middle School", coordinate: center1)
                    Marker("Cal State University Northridge", coordinate: center2)
                    Marker("Chatsworth Park Urban Planning Magnet", coordinate: center3)
                    Marker("ECR Charter - North High School Campus", coordinate: center4)
                    Marker("Elks Lodge 2190", coordinate: center5)
                    Marker("Los Angeles Pierce College", coordinate: center6)
                    Marker("Napa Street Elementary School", coordinate: center7)
                    Marker("Owensmouth Gardens", coordinate: center8)
                    Marker("Winnetka Ave Elementary School", coordinate: center9)
                    Marker("Vietnamese Association of SFV", coordinate: center10)

                }
                    
                    .border((Color(red: 44/255, green: 110/255, blue:73/255)), width: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
                    .frame(width: 360.0, height: 525.0)
                    .cornerRadius(15)
                    .padding()
                

               
            
            
                }
               
                
            
            
            
            
            
            
        }
        
    }
}

struct votingCenter_Previews: PreviewProvider {
    static var previews: some View {
        votingCenter()
    }
}

