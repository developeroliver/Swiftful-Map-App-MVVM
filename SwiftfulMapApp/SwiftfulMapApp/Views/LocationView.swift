//
//  LocationViewModel.swift
//  SwiftfulMapApp
//
//  Created by olivier geiger on 18/06/2025.
//

import SwiftUI
import MapKit

struct LocationView: View {
    
    @State var vm: LocationViewModel
    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion).ignoresSafeArea()
        }
    }
}

#Preview {
    LocationView(vm: LocationViewModel())
}
