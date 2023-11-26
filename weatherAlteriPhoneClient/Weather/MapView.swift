//
//  MapView.swift
//  weatherAlteriPhoneClient
//
//  Created by Kirk Hietpas on 11/26/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    // todo: Clean this up
    var cameraPosition: MapCameraPosition {
        MapCameraPosition.region(self.region)
    }
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 39.3210, longitude: -111.0937),
        span: MKCoordinateSpan(latitudeDelta: 3, longitudeDelta: 3)
    )
    var body: some View {
        VStack {
            Map(position: .constant(cameraPosition), bounds: nil, interactionModes: .all, scope: nil)
        }
    }
}

#Preview {
    MapView()
}
