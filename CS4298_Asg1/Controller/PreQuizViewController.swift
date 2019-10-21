//
//  PreQuizViewController.swift
//  CS4298_Asg1
//
//  Created by YU Ka Kit on 12/10/2019.
//  Copyright © 2019 YU Ka Kit. All rights reserved.
//

import UIKit

class PreQuizViewController: UIViewController {

    @IBOutlet weak var quizTime: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Language_Control.language == 1{
            quizTime.text = "測驗時間!"
            startButton.setTitle("開始", for: .normal)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
