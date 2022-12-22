//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Виталий Иншаков on 22.12.2022.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        VStack {
            Text(title)
                .padding()
                .font(.title)
                .background(Color("CardBackground"))
            Text(description)
                .padding()
                .background(Color("CardBackground"))
        }
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Offer(title: "My offer", description: "Desc")
    }
}
