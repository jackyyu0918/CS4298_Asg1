//
//  Information_ViewController.swift
//  CS4298_Asg1
//
//  Created by CHOW Ho Hin on 21/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//

import Foundation
import UIKit

class Information_ViewController: UIViewController {
    
    
    @IBOutlet weak var Info_Title: UILabel!
    
    @IBOutlet weak var History_Button: UIButton!
    
    @IBOutlet weak var WhatIsNexCalendar_Button: UIButton!
    
    @IBOutlet weak var Reason_Button: UIButton!
    
    @IBOutlet weak var Benefit_Button: UIButton!
    
    override func viewDidLoad() {
        
        if(Language_Control.language == 0){
            
            
            
            
        }
        else if(Language_Control.language == 1){
          
            Info_Title.text = "關於NexCalendar"
            History_Button.setTitle("有趣的日曆歷史", for: .normal)
            WhatIsNexCalendar_Button.setTitle("甚麼是NexCalendar", for: .normal)
            Reason_Button.setTitle("使用NexCalendar的原因", for: .normal)
            Benefit_Button.setTitle("使用NexCalendar的好處", for: .normal)
            
        }
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
 
    
}
