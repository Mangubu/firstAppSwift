//
//  Model.swift
//  FirstApp
//
//  Created by Mangubu on 15/02/2016.
//  Copyright © 2016 Mangubu. All rights reserved.
//

import UIKit
import ObjectMapper

class Model: Mappable {
    
    var content: String?
    
    init(content: String){
        
        self.content = content
    }
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        
        self.content <- map["content"]
        
    }
}
