//
//  PlaceRowModel.swift
//  MyCityTour
//
//  Created by Adrian Inculet on 21.01.2026.
//

import Foundation

//https://maps.googleapis.com/maps/api/places/photo?maxwidth=400&photo_reference=

struct PlaceRowModel: Identifiable {
    let id: String
    let name: String
    let photoURL: URL
    let rating: Double
    let adress: String
    
    init?(place: PlaceDetailResponseModel) {
        self.id = place.placeId
        self.name = place.name
        self.rating = place.rating
        self.adress = place.vicinity
        guard let photos = place.photos,
        let firstPhoto = photos.first,
              let photoURL = URL(string: "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=\(firstPhoto.photoRefernce)&key=AIzaSyDtCgXZqgEhfTMEB8_psL8g8JUwOoKuWtU") else {
            return nil
        }
        self.photoURL = photoURL
    }
}
