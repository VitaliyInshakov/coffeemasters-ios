//
//  Category.swift
//  CoffeeMasters
//
//  Created by Виталий Иншаков on 26.12.2022.
//

import Foundation

struct Category: Decodable {
    var name: String
    var products: [Product] = []
}
