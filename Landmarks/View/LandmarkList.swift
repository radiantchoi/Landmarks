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
        List {
            LandmarkRow(landmark: landmarks[0])
            
            LandmarkRow(landmark: landmarks[1])
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
