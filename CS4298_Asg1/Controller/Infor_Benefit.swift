//
//  Infor_Benefit.swift
//  CS4298_Asg1
//
//  Created by CHOW Ho Hin on 18/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//
import UIKit

class Infor_Benefit: UIViewController {
    
    
    @IBOutlet weak var FirstBenefit_label: UILabel!
    
    @IBOutlet weak var SecondBenefit_label: UILabel!
    
    @IBOutlet weak var ThirdBenefit_label: UILabel!
    
    @IBOutlet weak var FourthBenefit_label: UILabel!
    
    @IBOutlet weak var FifthBenefit_label: UILabel!
    
    
    @IBOutlet weak var Homepage_button: UIButton!
    
    
    override func viewDidLoad() {
        
        
        if(Language_Control.language == 0){

            
            
            
        }
        else if(Language_Control.language == 1){
            
            FirstBenefit_label.text = InformationLanguage.First_benfit
            SecondBenefit_label.text = InformationLanguage.Second_benfit
            ThirdBenefit_label.text = InformationLanguage.Third_benefit
            FourthBenefit_label.text = InformationLanguage.Fourth_benefit
            FifthBenefit_label.text = InformationLanguage.Fifth_benefit
            Homepage_button.setTitle(InformationLanguage.homepage, for: .normal)
            
        }
        
        
        //First_Benefit.text = Chinese.yourVariable
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
