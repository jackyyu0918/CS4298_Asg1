//
//  Infor_ReasonPage2.swift
//  CS4298_Asg1
//
//  Created by CHOW Ho Hin on 21/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//

import Foundation
import UIKit

class Infor_ReasonPage2: UIViewController{
    
    @IBOutlet weak var BackButton: UIButton!
    
    @IBOutlet weak var Navigation_title: UINavigationItem!
    
    @IBOutlet weak var ThirdReason_label: UILabel!
    
    @IBOutlet weak var ThirdReason_textview: UITextView!
    
    
    override func viewDidLoad() {
        
        if(Language_Control.language == 0){
            
            
            
            
        }
        else if(Language_Control.language == 1){
            
           BackButton.setTitle(InformationLanguage.backButton, for: .normal)
           Navigation_title.title = InformationLanguage.Reason_title
            
            ThirdReason_label.text = InformationLanguage.thirdReason_title
            ThirdReason_textview.text = InformationLanguage.thirdReason
        
            
        }
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}
