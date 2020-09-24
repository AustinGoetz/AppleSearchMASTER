//
//  AppItem.swift
//  AppleSearchMASTER
//
//  Created by Austin Goetz on 9/23/20.
//

import Foundation

struct AppTopLevelDictionary: Codable {
    let results: [AppItem]
}

struct AppItem: Codable {
    let trackName: String
    let description: String
    let artworkUrl100: URL?
}
