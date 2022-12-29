//
//  Category.swift
//  CoffeeMasters
//
//  Created by Виталий Иншаков on 26.12.2022.
//

import Foundation

struct Category: Decodable, Identifiable {
    var id: String { name }
    var name: String
    var products: [Product] = []
}
