//
//  Landmark.swift
//  Landmarks
//
//  Created by Gordon Choi on 2023/06/19.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable {
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    // var여야만 할까..?
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    private var coordinates: Coordinates
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
