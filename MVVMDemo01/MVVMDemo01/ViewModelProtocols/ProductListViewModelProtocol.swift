//
//  ProductListViewModelProtocol.swift
//  MVVMDemo01
//
//  Created by Tran Quoc Bao on 12/1/17.
//  Copyright © 2017 Tran Quoc Bao. All rights reserved.
//

protocol ProductListViewModelProtocol: class {
    var products: [Product] { get }
    var productListDataSource: ProductListDataSource! { get set }
    var productsDidChange: ((ProductListViewModelProtocol) -> ())? { get set }
    init(products: [Product])
    func showProductList()
}
