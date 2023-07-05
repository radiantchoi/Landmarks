//
//  LandmarkSettings.swift
//  Landmarks
//
//  Created by Gordon Choi on 2023/07/06.
//

import SwiftUI

struct LandmarkSettings: View {
    @AppStorage("MapView.zoom") private var zoom: MapView.Zoom = .medium
    
    var body: some View {
        Form {
            Picker("Map Zoom:", selection: $zoom) {
                // 이렇게 아무데서나 갖다쓸거면 그냥 전역으로 놓지
                ForEach(MapView.Zoom.allCases) { level in
                    Text(level.rawValue)
                }
            }
            .pickerStyle(.inline)
        }
        .frame(width: 300)
        .navigationTitle("Landmark Settings")
        .padding(80)
    }
}

struct LandmarkSettings_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkSettings()
    }
}
