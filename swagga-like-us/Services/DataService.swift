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
    
    func getCategory() -> [Category] {
        return categories
    }
    
}
