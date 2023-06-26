//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by Gordon Choi on 2023/06/26.
//

import Foundation

struct HexagonParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adjustment: CGFloat = 0.085
    
    static let segments = [
        Segment(line: CGPoint(x: 0.6, y: 0.05),
                curve: CGPoint(x: 0.4, y: 0.05),
                control: CGPoint(x: 0.5, y: 0)),
        Segment(line: CGPoint(x: 0.05, y: 0.2 + adjustment),
                curve: CGPoint(x: 0, y: 0.3 + adjustment),
                control: CGPoint(x: 0, y: 0.25 + adjustment)),
        Segment(line: CGPoint(x: 0, y: 0.7 - adjustment),
                curve: CGPoint(x: 0.05, y: 0.8 - adjustment),
                control: CGPoint(x: 0, y: 0.75 - adjustment)),
        Segment(line: CGPoint(x: 0.4, y: 0.95),
                curve: CGPoint(x: 0.6, y: 0.95),
                control: CGPoint(x: 0.5, y: 1)),
        Segment(line: CGPoint(x: 0.95, y: 0.8 - adjustment),
                curve: CGPoint(x: 1, y: 0.7 - adjustment),
                control: CGPoint(x: 1, y: 0.75 - adjustment)),
        Segment(line: CGPoint(x: 1, y: 0.3 + adjustment),
                curve: CGPoint(x: 0.95, y: 0.2 + adjustment),
                control: CGPoint(x: 1, y: 0.25 + adjustment))
    ]
}
