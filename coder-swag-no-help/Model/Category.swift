//
//  Category.swift
//  coder-swag-no-help
//
//  Created by Sain-R Edwards Jr. on 1/6/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var image: String
    
    init(title: String, image: String) {
        self.title = title
        self.image = image
    }
    
}
