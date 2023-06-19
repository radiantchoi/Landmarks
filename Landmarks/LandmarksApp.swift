//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Gordon Choi on 2023/06/19.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
