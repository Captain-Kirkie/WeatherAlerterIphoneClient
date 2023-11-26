//
//  ContentView.swift
//  weatherAlteriPhoneClient
//
//  Created by Kirk Hietpas on 11/24/23.
//

import SwiftUI

private struct CustomImage: View {
    var imageName: String
    var text: String
    var body: some View {
        ZStack {
            Image(imageName).resizable().aspectRatio(contentMode: .fill)
                .overlay(
                    Text(self.text)
                       .font(.headline)
                       .foregroundColor(.white) // Set the text color to contrast with the image
                       .padding()
                       .background(Color.black.opacity(0.7)) // Adjust the opacity as needed
                       .cornerRadius(10) // Adjust the corner radius as needed
                       .offset(y: -20) // Adjust the vertical offset of the text
                       .frame(alignment: .bottom)
                )
        }
    }
}

struct HomeView: View {
    var body: some View {
        VStack {
            NavigationView {
                ScrollView {
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
            
        }
    
    }
}

