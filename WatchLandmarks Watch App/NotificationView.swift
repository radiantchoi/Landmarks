//
//  NotificationView.swift
//  WatchLandmarks Watch App
//
//  Created by Gordon Choi on 2023/07/06.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    var body: some View {
        VStack {
            if let landmark {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown Landmark")
                .font(.headline)
            
            Divider()
            
            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
        }
        .lineLimit(0)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(title: "Turtle Rock",
                         message: "You are within 5 miles of Turtle Rock",
                         landmark: ModelData().landmarks[0])
    }
}
