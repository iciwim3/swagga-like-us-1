//
//  Category.swift
//  swagga-like-us
//
//  Created by Sain-R Edwards Jr. on 1/4/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.imageName = imageName
        self.title = title
    }
}
