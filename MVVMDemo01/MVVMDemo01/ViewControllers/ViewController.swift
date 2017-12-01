//
//  ViewController.swift
//  MVVMDemo01
//
//  Created by Tran Quoc Bao on 12/1/17.
//  Copyright © 2017 Tran Quoc Bao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var productListTableView: UITableView!
    
    // MARK: Properties
    var viewModel: ProductListViewModelProtocol! {
        didSet {
            self.viewModel.productsDidChange = { [unowned self] viewModel in
                self.productListTableView.dataSource = self.viewModel.productListDataSource
                self.productListTableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.showProductList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

