//
//  MapView.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import SwiftUI
import MapKit

struct MapView: View {

    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(location)))
    }
    
    private var location: MKCoordinateRegion{
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02 )
        )
    }
}
#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
