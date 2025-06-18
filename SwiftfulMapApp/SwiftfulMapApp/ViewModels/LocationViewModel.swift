//
//  LocationViewModel.swift
//  SwiftfulMapApp
//
//  Created by olivier geiger on 18/06/2025.
//

import SwiftUI
import MapKit

@Observable
@MainActor
class LocationViewModel {
    
    // All loaded locations
    var locations: [Location] = []
    
    // Current location on map
    var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan
            )
        }
    }
}
