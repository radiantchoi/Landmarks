//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Gordon Choi on 2023/06/19.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            // 모델에서 이미지를 반환하게 하기보다
            // 이미지이름으로 여기서 불러오는 게 나은 것 같은데
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let landmark = DataLoader.shared.landmarks[0]
        
        LandmarkRow(landmark: landmark)
    }
}
