//
//  Infor_History.swift
//  CS4298_Asg1
//
//  Created by CHOW Ho Hin on 21/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//

import Foundation
import UIKit

class Infor_History: UIViewController {
    

    @IBOutlet weak var Navigation_Title: UINavigationItem!
    
    @IBOutlet weak var BackButton: UIButton!
    @IBOutlet weak var NextButton: UIButton!
    
    @IBOutlet weak var History1_textview: UITextView!
    
    @IBOutlet weak var History2_textview: UITextView!
    
    override func viewDidLoad() {
        
        
        
        
        if(Language_Control.language == 0){
            
            
            
            
        }
        else if(Language_Control.language == 1){
            
            
            History1_textview.text = InformationLanguage.First_History
            History2_textview.text = InformationLanguage.Second_History
            BackButton.setTitle(InformationLanguage.backButton, for: .normal)
            NextButton.setTitle(InformationLanguage.nextpage, for: .normal)
            Navigation_Title.title = InformationLanguage.History_title
            
           // FirstBenefit_label.text = InformationLanguage.First_benfit
           
            //Homepage_button.setTitle(InformationLanguage.homepage, for: .normal)
            
        }
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
