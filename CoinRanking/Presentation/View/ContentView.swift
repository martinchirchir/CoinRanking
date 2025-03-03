//
//  ContentView.swift
//  CoinRanking
//
//  Created by Martin Chirchir on 02/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Tab("Top Coins", systemImage: "chart.line.uptrend.xyaxis") {
                NavigationStack {
                    TopCoinsView()
                }
            }
            Tab("Favorites", systemImage: "heart") {
                NavigationStack {
                    FavoritesView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
