//
//  PriceUpdate.swift
//  RealTimePriceTrackerApp
//
//  Created by Ammar on 08/03/2026.
//

import Foundation

struct PriceUpdate: Codable {
    let symbol: String
    let price: Double
    let timestamp: Date
}
