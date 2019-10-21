//
//  Infor_WhatIs.swift
//  CS4298_Asg1
//
//  Created by CHOW Ho Hin on 21/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//

import Foundation

import UIKit

class Infor_WhatIs: UIViewController {

    @IBOutlet weak var Navigation_Title: UINavigationItem!
    
    @IBOutlet weak var WhatIsNexCalendar_textview: UITextView!
    
    @IBOutlet weak var Homepage_button: UIButton!
    
    
    override func viewDidLoad() {
        
        
        
        
        if(Language_Control.language == 0){
            
            
            
            
        }
        else if(Language_Control.language == 1){
          
            Navigation_Title.title = InformationLanguage.What_title
            WhatIsNexCalendar_textview.text = InformationLanguage.WhatIsNexCalendar
            Homepage_button.setTitle(InformationLanguage.homepage, for: .normal)
            
            
        }
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }




}
