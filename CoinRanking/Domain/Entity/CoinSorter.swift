//
//  CoinSorter.swift
//  CoinRanking
//
//  Created by Martin Chirchir on 02/03/2025.
//

import Foundation


enum CoinSorter: String, CaseIterable {
    case priceDescending, priceAscending, volumeDescending, volumeAscending
    
    var descriptor: SortDescriptor<Coin> {
        switch self {
        case .priceDescending:
            return SortDescriptor(\.doublePrice, order: .reverse)
        case .priceAscending:
            return SortDescriptor(\.doublePrice, order: .forward)
        case .volumeDescending:
            return SortDescriptor(\.dailyVolume, order: .reverse)
        case .volumeAscending:
            return SortDescriptor(\.dailyVolume, order: .forward)
        }
    }
    
    var title: String {
        switch self {
        case .priceDescending:
            return "Price descending"
        case .priceAscending:
            return "Price ascending"
        case .volumeDescending:
            return "24 hour performance descending"
        case .volumeAscending:
            return "24 hour performance ascending"
        }
    }
}
