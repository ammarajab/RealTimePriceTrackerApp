//
//  SymbolDetailViewModel.swift
//  RealTimePriceTrackerApp
//
//  Created by Ammar on 09/03/2026.
//

import SwiftUI

struct SymbolDetailViewModel: QuoteDisplayProviding {
    let quote: StockQuote

    var descriptionText: String {
        quote.description
    }
}
