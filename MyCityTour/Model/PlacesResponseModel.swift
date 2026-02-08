//
//  PlacesResponseModel.swift
//  MyCityTour
//
//  Created by Adrian Inculet on 21.01.2026.
//

import Foundation

struct PlacesResponseModel: Decodable {
    let results: [PlaceDetailResponseModel]
    
}

struct PlaceDetailResponseModel: Decodable {
    let placeId: String
    let name: String
    let photos: [PhotoInfo]?
    let rating: Double
    let vicinity: String
    
    enum CodingKeys: String, CodingKey {
        case placeId = "place_id"
        case name
        case photos
        case rating
        case vicinity
    }
}

struct PhotoInfo: Decodable {
    let photoRefernce: String
    
    enum CodingKeys: String, CodingKey {
        case photoRefernce = "photo_reference"
    }
}

