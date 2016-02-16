//
//  Fontaine.swift
//  FirstApp
//
//  Created by Mangubu on 15/02/2016.
//  Copyright © 2016 Mangubu. All rights reserved.
//

import UIKit
import ObjectMapper

class Fontaine: Mappable {
    
    var _id: String?
    var name: String?
    var adress: Address?
    var location: Location?
    var distance: Int?
    
    required init?(_ map: Map) {
    }
    
    init(){
        
    }
    
    
    func mapping(map: Map) {
        
        self._id <- map["_id"]
        self.name <- map["name"]
        self.adress <- map["postal_address"]
        self.location <- map["loc"]
        self.distance <- map["dist"]
        
    }


}
