//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Виталий Иншаков on 26.12.2022.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
}
