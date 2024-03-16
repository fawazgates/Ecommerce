//
//  HomePageView.swift
//  Ecommerce
//
//  Created by User on 17/03/24.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    ExtractedView()
                    SearchView()
                    ImageSlideerView()
                    
                    HStack {
                        Text("New Product")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        NavigationLink(destination: {
                            ProductsView()
                        }, label: {
                            Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(Color(.systemGray6))
                        })

                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(productList, id: \.id) { product in
                                NavigationLink {
                                    ProductDetailView(product: product)
                                } label: {
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    HomePageView()
        .environmentObject(CartManager())
}

struct ExtractedView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(.fawaz)
                        .resizable()
                        .frame(width: 45, height: 45)
                        .cornerRadius(20)
                        .padding(.trailing)
                    
                    Text("Jakarta")
                        .font(.title2)
                        .foregroundColor(Color(.systemGray4))
                    
                    Spacer()
                    
                    NavigationLink(destination: CartView()
                        .environmentObject(cartManager)
                    ) {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                }
                
                Text("Cari Produk Di")
                    .font(.largeTitle .bold())
                    
                + Text(" Forniture")
                    .font(.largeTitle .bold())
                    .foregroundColor(Color(.systemGray))
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}
