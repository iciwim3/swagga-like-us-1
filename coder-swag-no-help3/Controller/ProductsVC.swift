//
//  ProductsVC.swift
//  coder-swag-no-help3
//
//  Created by Sain-R Edwards Jr. on 1/7/18.
//  Copyright © 2018 Appybuildmore Apps. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    private(set) public var products = [Product]()

    @IBOutlet weak var productCollection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollection.delegate = self
        productCollection.dataSource = self

    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    }

}
