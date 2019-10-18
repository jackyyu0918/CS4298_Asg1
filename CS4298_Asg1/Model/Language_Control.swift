//
//  Chinese.swift
//  CS4298_Asg1
//
//  Created by CHOW Ho Hin on 18/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//

import Foundation
import UIKit

struct Language_Control {
    
  //  var langObj =  Chinese()
    
    static var language = 0// 0 = english by default<#value#>

    static var English_String = "English"
    
    static var Chinese_String = "Chinese"
    

    static func English_Selected(){
       
        language = 0
        
    }
    
    static func Chinese_Selected(){
        
        language = 1
        
    }
    
    
}

