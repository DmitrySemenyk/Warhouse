//
//  ViewController.swift
//  Warhouse
//
//  Created by Dmitry Semenuk on 30/11/2019.
//  Copyright © 2019 Dmitry Semenuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    @IBOutlet weak var validationLabel: UILabel!
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        if self.userNameText.text?.count == 0 {
            self.validationLabel.text = "Login has empty fild"
        }else if self.userPassword.text?.count == 0 {
            self.validationLabel.text = "Pasword not set"
        }else{
            self.validationLabel.text = "Sign IN Correct"
            let controller = self.storyboard!.instantiateViewController(withIdentifier: "SupilesViewController") as! SupilesViewController
            self.navigationController!.pushViewController(controller, animated: true)
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View has loaded")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
}

