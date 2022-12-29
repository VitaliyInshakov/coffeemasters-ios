//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Виталий Иншаков on 25.12.2022.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager

    var body: some View {
        NavigationView {
            List {
                if menuManager.menu.count == 0 {
                    HStack {
                        Text("We couldn't fetch the data")
                        Button("Reload") {}
                    }
                } else {
                    ForEach(menuManager.menu) { category in
                        Text(category.name)
                        ForEach(category.products) { product in
                            NavigationLink {
                                DetailsPage(product: product)
                            } label: {
                                ProductItem(product: product)
                            }
                        }
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage().environmentObject(MenuManager())
    }
}
