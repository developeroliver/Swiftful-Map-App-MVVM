//
//  SwiftfulMapAppApp.swift
//  SwiftfulMapApp
//
//  Created by olivier geiger on 18/06/2025.
//

import SwiftUI

@main
struct SwiftfulMapAppApp: App {
    
    @StateObject private var vm = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
        }
    }
}
