//
//  Landmark.swift
//  LandmarksSwiftUI
//
//  Created by Ahmed Talaat on 11/09/2022.
//

import Foundation

struct Landmark: Codable, Identifiable {
    let name: String
    let category: Category
    let city, state: String
    let id: Int
    var isFeatured, isFavorite: Bool
    let park: String
    let coordinates: Coordinates
    let welcomeDescription, imageName: String

    enum CodingKeys: String, CodingKey {
        case name, category, city, state, id, isFeatured, isFavorite, park, coordinates
        case welcomeDescription = "description"
        case imageName
    }
}

enum Category: String, Codable {
    case lakes = "Lakes"
    case mountains = "Mountains"
    case rivers = "Rivers"
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let longitude, latitude: Double
}

typealias Landmarks = [Landmark]
