//
//  Product.swift
//  Ecommerce
//
//  Created by User on 17/03/24.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    var widht: String
    var height: String
    var diameter: String
}

var productList = [
    Product(name: "Sofa",
            image: "int",
            description: "Pilihan Warna Kursi OXIHOM FSM6 Full Mesh Series : - Warna Frame / Body (2 warna) Hitam & Abu - Warna tempat duduk & sandaran : (2 warna) Hitam & Abu-abu Pilihan Warna FOOTREST untuk Kursi FSM6 Full Mesh Series : - Foot Rest Hitam - Foot Rest Abu",
            supplier: "IKEA",
            price: 211,
            widht: "120",
            height: "120",
            diameter: "12"),
    Product(name: "Sofa Bantal",
            image: "int1",
            description: "",
            supplier: "IKEA",
            price: 350,
            widht: "120",
            height: "120",
            diameter: "12")
]
