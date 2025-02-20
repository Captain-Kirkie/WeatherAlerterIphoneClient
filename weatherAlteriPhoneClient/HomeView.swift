//
//  ContentView.swift
//  weatherAlteriPhoneClient
//
//  Created by Kirk Hietpas on 11/24/23.
//
// TODO: Something like this: https://www.swiftyplace.com/blog/swiftui-search-bar-best-practices-and-examples

import SwiftUI

private struct CustomImage: View {
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

struct HomeView: View {
    @State private var latitude: Double = 0
    @State private var long: Double = 0
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                NavigationLink(destination: WeatherView()) {
                    CustomImage(imageName: "twins", text: "Weather")
                }
                NavigationLink(destination: ResortView()) {
                    CustomImage(imageName: "mineral-basin", text: "Resort")
                }
                NavigationLink(destination: TrafficView()) {
                    CustomImage(imageName: "traffic", text: "Traffic")
                }
                NavigationLink(destination: BackCountryView()) {
                    CustomImage(imageName: "backcountry", text: "Back Country")
                }
                NavigationLink(destination: FindAFriend()) {
                    CustomImage(imageName: "Andrew", text: "Find a friend to shred")
                }
                NavigationLink(destination: FindARide()) {
                    CustomImage(imageName: "newTruck", text: "Find a ride")
                }
            }
            
        }.toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button {
                    print("TODO: Do something with this tool bar")
                } label: {
                    Image(systemName: "pencil")
                }
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
}

