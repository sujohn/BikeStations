//
//  BikeStationModel.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/20/22.
//

import Foundation


struct BikeStationModel: Identifiable, Codable {
    
    var id: Int?
    let features: [FeatureModel]?
    let crs: CRSModel?
    let type: String?
}

struct CRSModel: Codable {
    
    let type: String?
    let properties: CRSPropertyModel?
}

struct CRSPropertyModel: Codable {
    
    let code: String?
}
