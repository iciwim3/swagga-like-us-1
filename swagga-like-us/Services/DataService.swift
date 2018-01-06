//
//  DataService.swift
//  swagga-like-us
//
//  Created by Sain-R Edwards Jr. on 1/4/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
    
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        
    ]
    
    private let hats = [
    
        Product(title: "Devslopes Logo Graphic Beanie", price: "$19", image: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$23", image: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$20", image: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$25", image: "hat04.png")
        
    ]
    
    private let hoodies = [
    
        Product(title: "Devslopes Logo Hoodie Gray", price: "$30", image: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$33", image: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Gray", price: "$27", image: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$40", image: "hoodie04.png")
    
    ]
    
    private let shirts = [
    
        Product(title: "Devslopes Logo Shirt Black", price: "$24", image: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Gray", price: "$20", image: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$28", image: "shirt03.png"),
        Product(title: "Hustle Delegate Gray", price: "$28", image: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$26", image: "shirt05.png")
    
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategory() -> [Category] {
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
            return getDigital()
        default:
            return getHoodies()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigital() -> [Product] {
        return digitalGoods
    }
    
}
