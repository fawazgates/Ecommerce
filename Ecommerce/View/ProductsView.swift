//
//  ProductsView.swift
//  Ecommerce
//
//  Created by User on 17/03/24.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cartManeger:  CartManager
    
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCardView(product: product)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ProductsView()
        .environmentObject(CartManager())
}
