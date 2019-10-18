//
//  ViewController.swift
//  CS4298_Asg1
//
//  Created by YU Ka Kit on 11/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var eng_button: UIButton!
    @IBOutlet weak var chin_button: UIButton!

    override func viewDidLoad() {
        
         //eng_button.isSelected = !eng_button.isSelected
         //chin_button.isSelected = !chin_button.isSelected
   
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        
    @IBAction func EnglishButton_pressed(_ sender: Any) {
        
         Language_Control.English_Selected()
    }
    
  
    @IBAction func ChineseButton_pressed(_ sender: Any) {
        
        Language_Control.Chinese_Selected()
    }
    
}

