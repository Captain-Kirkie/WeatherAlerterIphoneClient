//
//  CardView.swift
//  weatherAlteriPhoneClient
//
//  Created by Kirk Hietpas on 2/23/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct CardView: View {
    var image: String
    var title: String
    var location: CLLocation
    
    
    var body: some View {
        VStack {
            Image(image).resizable()
            VStack { 
                HStack {
                    // This is the name of the location
                    Text(title).padding().fontWeight(.bold).font(Font.title2)
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
                    Text("This is description")
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width - 10, height: UIScreen.main.bounds.height / 3)
        .clipShape(RoundedRectangle(cornerRadius: 55))
        .shadow(radius: 10)
        .background(RoundedRectangle(cornerRadius: 55).fill(.gray))
    }
}


struct CustomImage: View {
    var imageName: String
    var text: String
    var body: some View {
        ZStack {
            Image(imageName).resizable().aspectRatio(contentMode: .fill)
            Text(self.text)
                .font(.headline)
                .foregroundColor(.white) // Set the text color to contrast with the image
                .padding()
                .background(Color.black.opacity(0.7)) // Adjust the opacity as needed
                .cornerRadius(50) // Adjust the corner radius as needed
                .frame(alignment: .center)
        }.fixedSize(horizontal: false, vertical: true)
            .aspectRatio(CGSize(width: 3, height: 5),contentMode: .fit)
            .cornerRadius(50)
            .padding()
    }
}




#Preview {
    // Breckinridge CO lat and long
    CardView(image: "twins", title: "Breckenridge, CO", location: CLLocation(latitude: 39.4817, longitude: -106.0384))
}
