//
//  SuppliesViewController.swift
//  Warhouse
//
//  Created by Dmitry Semenuk on 30/11/2019.
//  Copyright © 2019 Dmitry Semenuk. All rights reserved.
//

import UIKit

class SupilesViewController: UITableViewController {
    static var suplies: [ProductModel] = [
        ProductModel(productId: 1, productImage: "", productName: "Film", productDescription: ""),
        ProductModel(productId: 2, productImage: "", productName: "Bits", productDescription: ""),
        ProductModel(productId: 3, productImage: "", productName: "Fits", productDescription: ""),
        ProductModel(productId: 4, productImage: "", productName: "Tits", productDescription: ""),
        ProductModel(productId: 5, productImage: "", productName: "Mokey", productDescription: ""),
        ProductModel(productId: 6, productImage: "", productName: "Milk", productDescription: ""),
        ProductModel(productId: 7, productImage: "", productName: "Fets", productDescription: ""),
        ProductModel(productId: 8, productImage: "", productName: "Fds", productDescription: ""),
        ProductModel(productId: 9, productImage: "", productName: "Fifdlm", productDescription: ""),
        ProductModel(productId: 10, productImage: "", productName: "fffff", productDescription: ""),
        ProductModel(productId: 11, productImage: "", productName: "erefa", productDescription: ""),
        ProductModel(productId: 12, productImage: "", productName: "dsfsd", productDescription: ""),
        ProductModel(productId: 13, productImage: "", productName: "fhthrwf", productDescription: ""),

    ]
    
    func changeProduct(model: ProductModel){
        if model.productId == -1{
//            model.productId = makeNewProductId()
            SupilesViewController.suplies.append(model)
        }else{
            var changeIndex: Int = -1
            for i in 0 ..< SupilesViewController.suplies.count {
                if SupilesViewController.suplies[i].productId == model.productId {
                    changeIndex = i
                    break
                }
            }
            if changeIndex >= 0 {
                SupilesViewController.suplies[changeIndex].productImage = model.productImage
                SupilesViewController.suplies[changeIndex].productName = model.productName
                SupilesViewController.suplies[changeIndex].productDescription = model.productDescription
            }
        }
        self.tableView.reloadData()
    }
    
//    func makeNewProductI() -> Int {
//        var sortProducts: = SupilesViewController.suplies.sorted{ (a,b) -> Bool in
//            return a.productId < b.productId
//        }
//        return sortProducts
//    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.initNavigationButtons()
//    }
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        print("Tree")
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//        return self.suplies.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
//        UITableViewCell{
//            let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
//                    cell.textLabel?.text = self.suplies[indexPath.row]
//            return cell
//    }
//
//    func initNavigationButtons(){
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "⇦ Назад", style: UIBarButtonItem.Style.plain, target: self, action: #selector(SupilesViewController.backToParent))
//    }
//
//    @objc func backToParent(){
//        _ = self.navigationController?.popViewController(animated: true)
//    }
}
