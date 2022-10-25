//
//  FeatureModel.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/20/22.
//

import Foundation

struct FeatureModel: Identifiable, Codable {
    
    let id: String?
    let type: String?
    let properties: Property?
    let geometry: Geometry?
    
    var distance: String?
    
    mutating func updateDistance(dist: String) {
        self.distance = dist
    }
}

struct Property: Codable {
    
    let free_racks: String?
    let bikes: String?
    let label: String?
    let bike_racks: String?
    let updated: String?
}
