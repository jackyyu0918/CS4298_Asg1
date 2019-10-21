//
//  Infor_HistoryPage2.swift
//  CS4298_Asg1
//
//  Created by CHOW Ho Hin on 21/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//

import Foundation
import UIKit

class Infor_HistoryPage2: UIViewController {
    
    
    @IBOutlet weak var Navigation_title: UINavigationItem!
    @IBOutlet weak var BackButton: UIButton!
    @IBOutlet weak var History3_textview: UITextView!
    
    
    @IBOutlet weak var History4_textview: UITextView!
    
    @IBOutlet weak var homepageButton: UIButton!
    
    override func viewDidLoad() {
        
        
        
        
        if(Language_Control.language == 0){
            
            
            
            
        }
        else if(Language_Control.language == 1){
         Navigation_title.title = InformationLanguage.History_title
         History3_textview.text = InformationLanguage.Third_History
         History4_textview.text = InformationLanguage.Fourth_History
         BackButton.setTitle(InformationLanguage.backButton, for: .normal)
         homepageButton.setTitle(InformationLanguage.homepage, for: .normal)
        
      
        }
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
