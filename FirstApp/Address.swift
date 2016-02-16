//
//  Address.swift
//  FirstApp
//
//  Created by Mangubu on 15/02/2016.
//  Copyright © 2016 Mangubu. All rights reserved.
//

import UIKit
import ObjectMapper

class Address: Mappable {

    var adress: String?
    var postcode: String?
    var city: String?
    
    required init?(_ map: Map) {
    }
    
    init(){
        
    }
    
    func mapping(map: Map) {
        
        self.adress <- map["address"]
        self.postcode <- map["postcode"]
        self.city <- map["city"]
        
    }
    
}
