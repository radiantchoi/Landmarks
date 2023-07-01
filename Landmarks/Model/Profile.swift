//
//  Profile.swift
//  Landmarks
//
//  Created by Gordon Choi on 2023/07/01.
//

import Foundation

struct Profile {
    var userName: String
    
    var prefersNotification = true
    var seasonalPhoto = Season.autumn
    var goalDate = Date()
    
    static let initialUser = Profile(userName: "radiantchoi")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌹"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "⛄️"
        
        var id: String {
            rawValue
        }
    }
}
