//
//  Resort.swift
//  weatherAlteriPhoneClient
//
//  Created by Kirk Hietpas on 2/23/25.
//

import Foundation
struct Resort: Codable, Identifiable {
    static func == (lhs: Resort, rhs: Resort) -> Bool {
        return lhs.location == rhs.location
    }
    
    let id: String
    let name: String
    let location: Location
    let rating: Double
    var tags: [String]
    
//    static func preview() -> Meal {
//        Meal(imageURL: "europian.jpg",
//             id: "3",
//             category: MealCategory.oceanian,
//             name: "food name",
//             location: "Africa",
//             rating: 4,
//             tags: ["Fast Food"])
//    }
}
