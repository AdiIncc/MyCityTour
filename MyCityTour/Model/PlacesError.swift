//
//  PlacesError.swift
//  MyCityTour
//
//  Created by Adrian Inculet on 21.01.2026.
//

import Foundation

enum PlacesError: Error {
    case invalidURL, invalidResponse, bagRequestError, serverError
}
