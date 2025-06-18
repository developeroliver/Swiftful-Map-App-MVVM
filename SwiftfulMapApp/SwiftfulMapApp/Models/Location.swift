//
//  Location.swift
//  SwiftfulMapApp
//
//  Created by olivier geiger on 18/06/2025.
//

import Foundation
import MapKit

struct Location: Identifiable {
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // Identifiable
    var id: String {
        // name = "Colosseum"
        // cityName = "Rome"
        // id "ColosseumRome"
        name + cityName
    }
}
