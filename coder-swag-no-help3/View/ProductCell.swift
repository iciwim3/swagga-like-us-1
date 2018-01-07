//
//  ProductCell.swift
//  coder-swag-no-help3
//
//  Created by Sain-R Edwards Jr. on 1/7/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.image)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
