//
//  DataServices.swift
//  coder-swag-no-help4
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
    
        Product(title: "Devslopes Logo Shirt Black", price: "$23", image: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Light Gray", price: "$20", image: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$25", image: "shirt03.png"),
        Product(title: "Devslopes Logo Shirt Dark Gray", price: "$22", image: "shirt04.png"),
        Product(title: "Kickflip Studios Shirt Black", price: "$24", image: "shirt05.png")
    
    ]
    
    private let hats = [
    
        Product(title: "Devslopes Logo Beanie Black", price: "$17", image: "hat01.png"),
        Product(title: "Devslopes Logo Black Snapback", price: "$20", image: "hat02.png"),
        Product(title: "Devslopes Logo White Snapback", price: "$22", image: "hat03.png"),
        Product(title: "Devslopes Logo Black Snapback", price: "$24", image: "hat04.png")
    
    ]
    
    private let hoodies = [
    
        Product(title: "Devslopes Logo Hoodie Black", price: "$32", image: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$35", image: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie Dark Gray", price: "$31", image: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$30", image: "hoodie04.png")
        
    ]
    
    private let digital = [Product]()
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product] {
        return digital
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getDigitalGoods()
        }
    }
    
    func getCategory() -> [Category] {
        return categories
    }
    
}
