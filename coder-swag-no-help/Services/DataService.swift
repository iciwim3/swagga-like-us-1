//
//  DataService.swift
//  coder-swag-no-help
//
//  Created by Sain-R Edwards Jr. on 1/6/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import Foundation

struct DataService {
    
    static let instance = DataService()
    
    private let categories = [
    
        Category(title: "HATS", image: "hats.png"),
        Category(title: "SHIRTS", image: "shirts.png"),
        Category(title: "HOODIES", image: "hoodies.png"),
        Category(title: "DIGITAL", image: "digital.png")
        
    ]
    
    private let hats = [
    
        Product(title: "Devslopes Logo Black Beanie", price: "$18", image: "hat01.png"),
        Product(title: "Devslopes Logo Black Snapback", price: "$20", image: "hat02.png"),
        Product(title: "Devslopes Logo White Snapback", price: "$22", image: "hat03.png"),
        Product(title: "Devslopes Logo Black w/white bill Snapback", price: "$25", image: "hat04.png")
        
    ]
    
    private let hoodies = [
    
        Product(title: "Devslopes Logo Black Hoodie", price: "$32", image: "hoodie01.png"),
        Product(title: "Devslopes Logo Red Hoodie", price: "$32", image: "hoodie02.png"),
        Product(title: "Devslopes Logo Cool Gray Hoodie", price: "$35", image: "hoodie03.png"),
        Product(title: "Devslopes Logo Black Hoodie", price: "$32", image: "hoodie04.png"),
        
    ]
    
    private let shirts = [
    
        Product(title: "Devslopes Logo Black Tee-Shirt", price: "$26", image: "shirt01.png"),
        Product(title: "Devslopes Logo Heather Gray Tee-Shirt", price: "$22", image: "shirt02.png"),
        Product(title: "Devslopes Logo Red Tee-Shirt", price: "$25", image: "shirt03.png"),
        Product(title: "Devslopes Logo Cool Gray Shirt", price: "$23", image: "shirt04.png"),
        Product(title: "Kickflip Studios Logo Shirt", price: "$23", image: "shirt05.png")
    
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
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProduct(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getHoodies()
        }
    }

}
