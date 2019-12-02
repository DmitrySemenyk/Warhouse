//
//  ProductViewController.swift
//  Warhouse
//
//  Created by Dmitry Semenuk on 01/12/2019.
//  Copyright © 2019 Dmitry Semenuk. All rights reserved.
//

import UIKit

class ProductViewController: UITableViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var descriptionText: UITextField!
    
    var delegate: ProductProtocol?
    var id: Int = -1
    
    override func viewDidLoad() {
        self.viewDidLoad()
    }
    
    func initNavigationButtons(){
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "❌", style: UIBarButtonItem.Style.plain, target: self, action: #selector(ProductViewController.backToParent))
        let saveButton = UIBarButtonItem(title: "✔", style: UIBarButtonItem.Style.plain, target: self, action: #selector(ProductViewController.saveToData))
        self.navigationItem.setRightBarButton(saveButton, animated: true)
    }
    @objc func saveToData(){
        if self.delegate != nil {
            let model: ProductModel = ProductModel(productId: self.id, productImage: "", productName: self.nameText.text!, productDescription: self.descriptionText.text!)
            self.delegate?.changeProduct(model: model)
        }
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    @objc func backToParent(){
        _ = self.navigationController?.popViewController(animated: true)
    }
}
