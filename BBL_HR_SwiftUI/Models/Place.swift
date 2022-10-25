//
//  Place.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam Sujohn on 10/25/22.
//

import SwiftUI
import CoreLocation

struct Place: Identifiable {
    var id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
