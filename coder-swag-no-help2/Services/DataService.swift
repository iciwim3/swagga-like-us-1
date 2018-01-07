//
//  DataService.swift
//  coder-swag-no-help2
//
//  Created by Sain-R Edwards Jr. on 1/7/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import Foundation

struct DataService {
    
    static let instance = DataService()
    
    private let categories = [
    
        Category(title: "SHIRTS", image: "shirts.png"),
        Category(title: "HOODIES", image: "hoodies.png"),
        Category(title: "HATS", image: "hats.png"),
        Category(title: "DIGITAL", image: "digital.png")
    
    ]
    
    private let shirts = [
    
        Product(title: "Devslopes Logo Shirt Black", price: "$18", image: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Light Gray", price: "$18", image: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$20", image: "shirt03.png"),
        Product(title: "Devslopes Logo Shirt Dark Gray", price: "$18", image: "shirt04.png"),
        Product(title: "Kickflip Studios Logo Shirt", price: "$22", image: "shirt05.png")
    
    ]
    
    private let hoodies = [
    
        Product(title: "Devslopes Logo Hoodie Black", price: "$30", image: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", image: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie Dark Gray", price: "$30", image: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black - Pullover", price: "$27", image: "hoodie04.png")
    
    ]
    
    private let hats = [
    
        Product(title: "Devslopes Logo Beanie Hat Black", price: "$17", image: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$19", image: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$20", image: "hat03.png"),
        Product(title: "Devslopes Logo Black Hat - White Bill", price: "$17", image: "hat01.png")
    
    ]
    
    private let digital = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HOODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getShirts() -> [Product] {
       return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getDigitalGoods() -> [Product] {
        return digital
    }
    
}
