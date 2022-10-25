//
//  BikeStationListView.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/20/22.
//

import SwiftUI

struct BikeStationListView: View {
    
    @StateObject private var vm: BikeStationListViewModel = BikeStationListViewModel()
    @State var isActive = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                List(vm.stations) { station in
                    
                    ZStack {
                        NavigationLink(destination: BikeStationDetailsView(bikeStation: station)) {
                            
                            EmptyView()
                        }
                        BikeStationListItemView(bikeStation: station, cornerRadius: 12)
                    }
                    .listSectionSeparator(.hidden)
                }
                .listStyle(.plain)
                .task {
                    await vm.fetchBikeStations()
                }
                
            }
            .background(Color.white)
            .navigationTitle("Bike Stations")
        }
    }
}

struct BikeStationListView_Previews: PreviewProvider {
    static var previews: some View {
        BikeStationListView()
    }
}
