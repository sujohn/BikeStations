//
//  BikeStationListItemView.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/24/22.
//

import Foundation
import SwiftUI

struct BikeStationListItemView: View {
    
    var bikeStation: FeatureModel
    var cornerRadius: Double = 0
    
    var body: some View {
        
        ZStack {
            Color.white
                .cornerRadius(cornerRadius)
            VStack {
                HStack {
                    //•
                    VStack(alignment: .leading) {
                        Text("\(bikeStation.id ?? "") \(bikeStation.properties?.label ?? "")")
                            .font(.system(size: 25, weight: .bold))
                            .fixedSize(horizontal: false, vertical: true)
                        HStack {
                            Text("\(bikeStation.distance ?? "")")
                                .foregroundColor(.black)
                            Text("\u{2022} Bike Station")
                                .foregroundColor(.gray)
                        }
                    }
                    Spacer()
                }
                .padding()
                VStack(alignment: .center) {
                    HStack {
                        VStack {
                            Image("Bike")
                            Text("Available bikes")
                                .foregroundColor(.gray)
                            Text("\(bikeStation.properties?.bikes ?? "")")
                                .foregroundColor(.green)
                                .font(.system(size: 40, weight: .bold))
                        }
                        
                        VStack {
                            Image("Lock")
                            Text("Available places")
                                .foregroundColor(.gray)
                            Text("\(bikeStation.properties?.free_racks ?? "")")
                                .foregroundColor(.black)
                                .font(.system(size: 40, weight: .bold))
                        }
                    }
                    
                }
                .padding()
            }
        }
        .fixedSize(horizontal: false, vertical: true)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

//struct BikeStationListItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        BikeStationListItemView()
//    }
//}
