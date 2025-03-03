//
//  GetCoinsUsecase.swift
//  CoinRanking
//
//  Created by Martin Chirchir on 03/03/2025.
//

import Combine

struct GetCoinsUsecase: GetCoinsUseCaseProtocol {
    
    // Interface segregration
    var repository: GetCoinsRepositoryProtocol = CoinRepository.shared
    
    func execute() -> AnyPublisher<[Coin], Never> {
        repository.coinsPublisher
    }
}


