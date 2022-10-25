//
//  BikeStationDetailsView.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/20/22.
//

import SwiftUI

struct BikeStationDetailsView: View {
    
    var bikeStation: FeatureModel
    var cornerRadius: Double = 0
    
    var geo = Geometry(coordinates: [56.948889, 24.106389], type: "")
    
    var body: some View {
        
        ZStack {
            MapView(bikeStation: bikeStation)
            BikeStationListItemView(bikeStation: bikeStation, cornerRadius: 0)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

//struct BikeStationDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        BikeStationDetailsView(bikeStation: bikeStation)
//    }
//}
