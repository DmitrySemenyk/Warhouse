//
//  ProductModel.swift
//  Warhouse
//
//  Created by Dmitry Semenuk on 01/12/2019.
//  Copyright © 2019 Dmitry Semenuk. All rights reserved.
//

import Foundation

class ProductModel: NSObject {
    var productId = 1
    var productImage: String = ""
    var productName: String = ""
    var productDescription: String = ""
    
    init(productId: Int,
         productImage: String,
         productName: String,
         productDescription: String){
        self.productId = productId
        self.productName = productName
        self.productImage = productImage
        self.productDescription = productDescription
    }
    
}
