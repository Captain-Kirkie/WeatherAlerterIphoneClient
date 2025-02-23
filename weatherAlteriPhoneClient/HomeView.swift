//
//  ContentView.swift
//  weatherAlteriPhoneClient
//
//  Created by Kirk Hietpas on 11/24/23.
//
// TODO: Something like this: https://www.swiftyplace.com/blog/swiftui-search-bar-best-practices-and-examples

import SwiftUI
import CoreLocation

struct HomeView: View {
    @State var currentLocation: CLLocation?
    
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

