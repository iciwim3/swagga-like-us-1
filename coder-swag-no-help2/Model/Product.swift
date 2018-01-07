//
//  Product.swift
//  coder-swag-no-help2
//
//  Created by Sain-R Edwards Jr. on 1/7/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var image: String
    
    init(title: String, price: String, image: String) {
        self.title = title
        self.price = price
        self.image = image
    }
    
}
