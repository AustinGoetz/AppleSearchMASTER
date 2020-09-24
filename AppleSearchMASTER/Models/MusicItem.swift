//
//  MusicItem.swift
//  AppleSearchMASTER
//
//  Created by Austin Goetz on 9/23/20.
//

import Foundation

struct MusicTopLevelDictionary: Codable {
    let results: [MusicTrack]
}

struct MusicTrack: Codable {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL?
}
