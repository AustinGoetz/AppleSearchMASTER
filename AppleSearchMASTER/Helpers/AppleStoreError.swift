//
//  AppleStoreError.swift
//  AppleSearchMASTER
//
//  Created by Austin Goetz on 9/23/20.
//

import Foundation

enum AppleStoreError: LocalizedError {
    case invalidURL
    case thrownError(Error)
    case noData
    case unableToDecode(Error)
    case unableToDecodeImage
}
