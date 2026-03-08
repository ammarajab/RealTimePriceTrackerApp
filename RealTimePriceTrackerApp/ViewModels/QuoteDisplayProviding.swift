//
//  QuoteDisplayProviding.swift
//  RealTimePriceTrackerApp
//
//  Created by Ammar on 09/03/2026.
//

import SwiftUI

protocol QuoteDisplayProviding {
    var quote: StockQuote { get }
    var symbolText: String { get }
    var priceText: String { get }
    var changeIndicator: String { get }
    var changeColor: Color { get }
}

extension QuoteDisplayProviding {
    var symbolText: String {
        quote.symbol
    }

    var priceText: String {
        String(format: "$%.2f", quote.price)
    }

    var changeIndicator: String {
        switch quote.lastMovement {
        case .up:
            return "▲"
        case .down:
            return "▼"
        case .none:
            return ""
        }
    }

    var changeColor: Color {
        switch quote.lastMovement {
        case .up:
            return .green
        case .down:
            return .red
        case .none:
            return .primary
        }
    }
}
