//
//  Offer.swift
//  TikketAir
//
//  Created by MrRobot on 17.06.2024.
//

import Foundation

struct Offer: Identifiable, Codable {
    let id: Int
    let title: String
    let town: String
    let price: Price
}

struct Price: Codable {
    let value: String
}
