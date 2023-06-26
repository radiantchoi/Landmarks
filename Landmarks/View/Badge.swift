//
//  Badge.swift
//  Landmarks
//
//  Created by Gordon Choi on 2023/06/27.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
            RotateBadgeSymbol(angle: Angle(degrees: Double(index) / 8) * 360)
                .opacity(0.5)
        }
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(0.25, anchor: .top)
                    .position(x: geometry.size.width / 2, y: 0.75 * geometry.size.height)
            }
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
