//
//  ToggleFavoriteCoinUsecase.swift
//  CoinRanking
//
//  Created by Martin Chirchir on 03/03/2025.
//


struct ToggleFavoriteCoinUsecase: ToggleFavoriteCoinUsecaseProtocol {
    
    // Interface segregation
    var repository:ToggleFavoriteCoinRepositoryProtocol = CoinRepository.shared
    
    func execute(_ coin: Coin) {
        repository.toggleFavorite(coin)
    }
}
