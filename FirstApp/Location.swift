//
//  Location.swift
//  FirstApp
//
//  Created by Mangubu on 15/02/2016.
//  Copyright © 2016 Mangubu. All rights reserved.
//

import UIKit
import ObjectMapper

class Location: Mappable {
    
    var lat: Float?
    var long: Float?
    
    required init?(_ map: Map) {
    }
    
    init(){
        
    }
    
    func mapping(map: Map) {
        
        self.lat <- map["lat"]
        self.long <- map["lon"]
    }


}
