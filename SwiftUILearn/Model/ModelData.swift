//
//  ModelData.swift
//  SwiftUILearn
//
//  Created by Sarp on 2/13/24.
//

import Foundation

@Observable
class ModelData{
    
    var profile = Profile.default
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    
    
    var features: [Landmark] {
        landmarks.filter {
            $0.isFeatured
        }
    }
    
    var categories: [String: [Landmark]] {
        
        Dictionary(grouping: landmarks, by: { $0.category.rawValue })
    }
}




func load<T: Decodable>(_ filename: String) -> T {
    
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("\(filename) doesn't exist")
    }


    do {
        data = try Data(contentsOf: file)
    } 
    catch {
        fatalError("\(filename) loading error:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
