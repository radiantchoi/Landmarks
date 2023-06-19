//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Gordon Choi on 2023/06/19.
//

import SwiftUI

struct LandmarkList: View {
    private let landmarks = DataLoader.shared.landmarks
    
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
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
