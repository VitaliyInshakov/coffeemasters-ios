//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Виталий Иншаков on 22.12.2022.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
