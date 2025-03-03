//
//  NoContentView.swift
//  CoinRanking
//
//  Created by Martin Chirchir on 02/03/2025.
//
import SwiftUI

struct NoContentView: View {
    
    let description: String
    
    var body: some View {
        ContentUnavailableView(description, systemImage: "list.bullet.below.rectangle")
            .foregroundStyle(.secondary)
    }
}
