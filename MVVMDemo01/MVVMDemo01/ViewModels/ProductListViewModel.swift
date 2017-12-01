//
//  ProductListViewModel.swift
//  MVVMDemo01
//
//  Created by Tran Quoc Bao on 12/1/17.
//  Copyright © 2017 Tran Quoc Bao. All rights reserved.
//

class ProductListViewModel: ProductListViewModelProtocol {
    private(set) var products: [Product]
    
    var productListDataSource: ProductListDataSource! {
        didSet {
            self.productsDidChange?(self)
        }
    }
    
    var productsDidChange: ((ProductListViewModelProtocol) -> ())?
    
    required init(products: [Product]) {
        self.products = products
    }
    
    func showProductList() {
        productListDataSource = ProductListDataSource(products: products)
    }
}
