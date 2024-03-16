//
//  EcommerceApp.swift
//  Ecommerce
//
//  Created by User on 16/03/24.
//

import SwiftUI
import SwiftData

@main
struct EcommerceApp: App {
    var cartManager = CartManager() // Initialize your CartManager instance here

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(cartManager)
        }
    }
}
