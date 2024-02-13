//
//  MapView.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(location))
    }
    
    private var location: MKCoordinateRegion{
        MKCoordinateRegion(
            center:CLLocationCoordinate2D(latitude: 41.03943055609714, longitude: 28.994653004944624),
            span: MKCoordinateSpan(latitudeDelta: 0.008, longitudeDelta: 0.001 )
        )
    }
}
#Preview {
    MapView()
}
