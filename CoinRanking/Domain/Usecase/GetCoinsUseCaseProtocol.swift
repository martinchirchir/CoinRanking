//
//  GetCoinsUseCaseProtocol.swift
//  CoinRanking
//
//  Created by Martin Chirchir on 03/03/2025.
//


import Combine

protocol GetCoinsUseCaseProtocol {
    func execute() -> AnyPublisher<[Coin], Never>
}
