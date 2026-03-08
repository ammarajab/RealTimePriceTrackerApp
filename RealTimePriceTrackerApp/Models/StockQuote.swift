//
//  StockQuote.swift
//  RealTimePriceTrackerApp
//
//  Created by Ammar on 08/03/2026.
//

import Foundation

struct StockQuote: Identifiable, Codable {
    let id: String
    let symbol: String
    var price: Double
    var description: String
    var lastMovement: PriceMovement
    var lastUpdated: Date

    init(symbol: String, price: Double, description: String) {
        self.id = symbol
        self.symbol = symbol
        self.price = price
        self.description = description
        self.lastMovement = .none
        self.lastUpdated = Date()
    }
}

enum PriceMovement: String, Codable {
    case up
    case down
    case none
}
