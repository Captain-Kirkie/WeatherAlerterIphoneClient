//
//  CardView.swift
//  weatherAlteriPhoneClient
//
//  Created by Kirk Hietpas on 2/23/25.
//

import Foundation
import SwiftUI
import CoreLocation

protocol CardView {
    var image: String {get set}
    var title: String {get set}
    var description: String { get set }
}


struct LocationView: View {
    var image: String
    var title: String
    var location: CLLocation
    
    var body: some View {
        VStack {
            Image(image).resizable()
            CordinatesView( title: self.title, location: self.location)
        }
        .frame(width: UIScreen.main.bounds.width - 10, height: UIScreen.main.bounds.height / 3)
        .clipShape(RoundedRectangle(cornerRadius: 55))
        .shadow(radius: 10)
        .background(RoundedRectangle(cornerRadius: 55).fill(.gray))
    }
}


struct CordinatesView: View {
    var title: String
    var location: CLLocation
    var description: String?
    
    var body: some View {
        VStack {
            HStack {
                // This is the name of the location
                Text(title).padding().fontWeight(.bold).font(Font.title3)
                Spacer()
                VStack {
                    HStack {
                        Text("Latitude: \(self.location.coordinate.latitude)")
                        Spacer()
                    }
                    HStack {
                        Text("Longitude: \(self.location.coordinate.longitude)")
                        Spacer()
                    }
                }.frame(maxWidth: 200)
            }
            HStack { // this is the description
                Text(description ?? "No description available.")
            }
        }.background(Color.gray.opacity(0.5))
            .cornerRadius(20)
    }
}

struct NavigationCardView: View, CardView {
    var image: String
    var title: String
    var description: String
    
    private let cornerRadius: CGFloat = 100
    
    var body: some View {
        ZStack(alignment: .center){
            Image(image).resizable().aspectRatio(contentMode: .fill)
                .cornerRadius(self.cornerRadius)
            VStack {
                // This is the name of the location
                Text(title).fontWeight(.bold).font(Font.title2).foregroundColor(.white)
                Text(description).foregroundColor(.white)
            }.frame(maxWidth: .infinity) // Fill width
                .frame(height: 100)
                .background(Color.black.opacity(0.5)) // Semi-transparent background for
        }
      
        .padding()
//        .cornerRadius(cornerRadius)
        .shadow(radius: 10)
    }
}

//#Preview {
//    NavigationCard(image: "Andrew", title: "Find a friend to shred", description: "Looking for partners? This is the spot!")
//}


#Preview {
    // Breckinridge CO lat and long
//        LocationView(image: "twins", title: "Breckenridge, CO", location: CLLocation(latitude: 39.4817, longitude: -106.0384))
    
    NavigationCardView(image: "twins", title: "Weather", description: "Find weather forcast for your area!")
    
//    CordinatesView(title: "Breckenridge, CO", location: CLLocation(latitude: 39.4817, longitude: -106.0384))
}


