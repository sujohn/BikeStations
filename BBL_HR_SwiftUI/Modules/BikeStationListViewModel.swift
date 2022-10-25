//
//  BikeStationListViewModel.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/20/22.
//

import Foundation
import SwiftUI

class BikeStationListViewModel: ObservableObject {
    
    @State var locationManager = LocationManager()
    @Published var stations: [FeatureModel] = []
    
    func fetchBikeStations() async {
        
        do {
            
            let bs = try await RequestManager().request(endPoint: "?mtype=pub_transport&co=stacje_rowerowe", ofType: BikeStationModel.self, params: [:], method: .GET)
            
            self.manipulateBikeStations(stations: bs.features ?? [])
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    fileprivate func manipulateBikeStations(stations: [FeatureModel]) {
        
        DispatchQueue.main.async {
            self.stations.removeAll()
        }
        
        var tempStations = [FeatureModel]()
        
        for var item in stations {
            
            let distance = locationManager.distanceInKM(latitude: item.geometry?.coordinates?.first ?? 0.0, longitude: item.geometry?.coordinates?.last ?? 0.0)
            item.updateDistance(dist: String(format: "%0.2lf KM", distance))
            
            tempStations.append(item)
        }
        
        DispatchQueue.main.async {
            self.stations = tempStations
        }
        
    }
}
