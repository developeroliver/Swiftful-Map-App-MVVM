//
//  LocationsListView.swift
//  SwiftfulMapApp
//
//  Created by olivier geiger on 19/06/2025.
//

import SwiftUI

struct LocationsListView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                Button {
                    vm.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                        .padding(4)
                        .listRowBackground(Color.clear)
                }
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    LocationsListView()
        .environmentObject(LocationViewModel())
}

extension LocationsListView {
    
    private func listRowView(location: Location) -> some View {
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
            }
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
