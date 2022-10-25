//
//  MapView.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/20/22.
//

import Foundation
import SwiftUI
import CoreLocation
import MapKit


struct MapView: View {
    
    var places: [Place]
    @State var coordinateRegion: MKCoordinateRegion
    
    init(bikeStation: FeatureModel?) {
        
        places = [Place(name: "\(bikeStation?.properties?.label ?? "")", latitude: bikeStation?.geometry?.coordinates?.first ?? 0.0, longitude: bikeStation?.geometry?.coordinates?.last ?? 0.0)]
        
        coordinateRegion = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: bikeStation?.geometry?.coordinates?.first ?? 0.0, longitude: bikeStation?.geometry?.coordinates?.last ?? 0.0),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        
    }
    
    var body: some View {
        Map(coordinateRegion: $coordinateRegion, showsUserLocation: true, annotationItems: places) { place in
            MapMarker(coordinate: place.coordinate, tint: .green)
        }
        .edgesIgnoringSafeArea(.all)
    }
}
