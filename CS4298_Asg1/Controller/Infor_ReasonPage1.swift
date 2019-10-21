//
//  Infor_ReasonPage1.swift
//  CS4298_Asg1
//
//  Created by CHOW Ho Hin on 21/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//

import Foundation
import UIKit

class Infor_ReasonPage1: UIViewController{
    
    
    @IBOutlet weak var BackButton: UIButton!
    @IBOutlet weak var NextButton1: UIButton!
    
    
    @IBOutlet weak var Navigation_title: UINavigationItem!
    
    @IBOutlet weak var FirstDayLabel: UILabel!
    @IBOutlet weak var LeapDayLabel: UILabel!
    
    @IBOutlet weak var Reason1_textview: UITextView!
    @IBOutlet weak var Reason2_textview: UITextView!
    
    
    
    override func viewDidLoad() {
    
        
        
        if(Language_Control.language == 0){
            
            
            
            
        }
        else if(Language_Control.language == 1){
            
            BackButton.setTitle(InformationLanguage.backButton, for: .normal)
            NextButton1.setTitle(InformationLanguage.nextpage, for: .normal)
            Navigation_title.title = InformationLanguage.Reason_title
            
            // First Reason
            FirstDayLabel.text = InformationLanguage.firstReason_title
            Reason1_textview.text = InformationLanguage.firstReason
            
            // Second Reasoon
            LeapDayLabel.text = InformationLanguage.secondReason_title
            Reason2_textview.text = InformationLanguage.secondReason
            
            
        }
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}
