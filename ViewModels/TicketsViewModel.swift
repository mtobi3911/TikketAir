//
//  TicketsViewModel.swift
//  TikketAir
//
//  Created by MrRobot on 17.06.2024.
//

import Foundation
import Combine

class TicketsViewModel: ObservableObject {
    @Published var offers: [Offer] = []
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        fetchOffers()
    }
    
    func fetchOffers() {
        guard let url = URL(string: "https://run.mocky.io/v3/214a1713-bac0-4853-907c-a1dfc3cd05fd") else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [Offer].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .receive(on: DispatchQueue.main)
            .assign(to: \.offers, on: self)
            .store(in: &cancellables)
    }
}
