//
//  Product.swift
//  ShopApp
//
//  Created by Devavrat Upadhyay on 22/03/24.
//

import Foundation

struct Product :Identifiable{
    let id = UUID()
    var name: String
    var image: String
    var price :Int
}
var productList = [Product(name: "Orange Sweater", image: "sweater1", price: 54),
Product(name: "Red wine sweate", image: "sweater2", price: 89),
Product(name: "Sand sweater", image: "sweater3", price: 79),
Product(name: "Sea sweater", image: "sweater4", price: 94),
Product(name: "Cream sweater", image: "sweater5", price: 99),
Product(name: "Beige sweater", image: "sweater6", price: 65),
Product(name: "Grey sweater", image: "sweater7", price: 54),
Product(name: "Mink sweater", image: "sweater8", price: 83)]
