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
//    @FocusState private var emailFieldIsFocused: Bool = false
    @State var mountainString: String = ""
    
    var body: some View {
        // Current location indicator
        VStack {
            TextField(
                    "Find your Mountain",
                    text: $mountainString
            ).background(Color.white)
//                .focused($emailFieldIsFocused)
                .onSubmit {
//                    validate(name: username)
                    print("hello world \($mountainString)")
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.secondary)
            
            CordinatesView(title: "Breckenridge, CO", location: CLLocation(latitude: 39.4817, longitude: -106.0384))
        }.frame(height: 100)
//            .background(Color.black.opacity(0.5))
        // scroller view to decide what to do
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
                // TODO: Add lodging
                
            }.toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button {
                        print("TODO: Go to the Profile page.")
                    } label: {
                        Image(systemName: "person")
                    }
                }
            }
        }
    }
}


struct CurrentLocation: View {
    var body: some View {
        LocationView(image: "twins", title: "Breckenridge, CO", location: CLLocation(latitude: 39.4817, longitude: -106.0384))
    }
}

#Preview {
    HomeView(currentLocation: nil, mountainString: "hello world")
}
