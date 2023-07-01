//
//  DataLoader.swift
//  Landmarks
//
//  Created by Gordon Choi on 2023/06/19.
//

import Combine
import Foundation

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = DataLoader<Landmark>(fileName: "landmarkData.json").data
    var hikes = DataLoader<Hike>(fileName: "hikeData.json").data
    
    var features: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}

struct DataLoader<T: Codable> {
    var data: [T] = []
    
    init(fileName: String) {
        data = load(fileName)
    }
    
    func load<T: Decodable>(_ fileName: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            fatalError("Couldn't find \(fileName) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
        }
        
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
        }
    }
}
