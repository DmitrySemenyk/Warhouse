//
//  SuppliesViewController.swift
//  Warhouse
//
//  Created by Dmitry Semenuk on 30/11/2019.
//  Copyright © 2019 Dmitry Semenuk. All rights reserved.
//

import UIKit

class SupilesViewController: UITableViewController {
    var suplies: [String] = [
        "1", "1", "1", "1", "1", "1"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initNavigationButtons()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        print("Tree")
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.suplies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell{
            let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
                    cell.textLabel?.text = self.suplies[indexPath.row]
            return cell
    }
    
    func initNavigationButtons(){
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "⇦ Назад", style: UIBarButtonItem.Style.plain, target: self, action: #selector(SupilesViewController.backToParent))
    }
    
    @objc func backToParent(){
        _ = self.navigationController?.popViewController(animated: true)
    }
}
