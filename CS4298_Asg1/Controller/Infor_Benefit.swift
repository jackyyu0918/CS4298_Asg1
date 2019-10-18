//
//  Infor_Benefit.swift
//  CS4298_Asg1
//
//  Created by CHOW Ho Hin on 18/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//
import UIKit

class Infor_Benefit: UIViewController {
    
    @IBOutlet weak var First_Benefit: UILabel!
    
    override func viewDidLoad() {
        
        
        if(Language_Control.language == 0){
            First_Benefit.text = Language_Control.English_String
            
        }
        else if(Language_Control.language == 1){
            First_Benefit.text = Language_Control.Chinese_String
            
        }
        
        
        //First_Benefit.text = Chinese.yourVariable
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
