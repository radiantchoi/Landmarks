//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Gordon Choi on 2023/06/19.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    private let landmarks = DataLoader.shared.landmarks
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { $0.isFavorite || !showFavoritesOnly }
    }
    
    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
