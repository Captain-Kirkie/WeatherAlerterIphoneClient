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
                    NavigationCard(image: "twins", title: "Weather", description: "Find weather forcast for your area")
                }
                NavigationLink(destination: ResortView()) {
                    NavigationCard(image: "mineral-basin", title: "Resort", description: "Get Resort info for your area")
                }
                NavigationLink(destination: TrafficView()) {
                    NavigationCard(image: "traffic", title: "Traffic", description: "Get Traffic Report")
                }
                NavigationLink(destination: BackCountryView()) {
                    NavigationCard(image: "backcountry", title: "Back Country", description: "Get Back Country forcast for your area")
                }
                NavigationLink(destination: FindAFriend()) {
                    NavigationCard(image: "Andrew", title: "Find a friend to shred", description: "Looking for partners? This is the spot!")
                }
                NavigationLink(destination: FindARide()) {
                    NavigationCard(image: "newTruck", title: "Carpool", description: "Find fellow shredders to carpool with")
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
}
