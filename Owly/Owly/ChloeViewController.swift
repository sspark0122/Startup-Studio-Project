//
//  ChloeViewController.swift
//  Owly
//
//  Created by Carolyn Haitz Olaguivel on 3/14/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit

class ChloeViewController: UIViewController {
    @IBOutlet weak var learningTag: UILabel!
    @IBOutlet weak var concentratedTag: UILabel!
    @IBOutlet weak var scheduleBackground: UITextView!
    @IBOutlet weak var foodTag: UILabel!
    @IBOutlet weak var hungryTag: UILabel!
    @IBOutlet weak var scheduleBackground2: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        learningTag.layer.masksToBounds = true
        learningTag.layer.cornerRadius = 5
        
        concentratedTag.layer.masksToBounds = true
        concentratedTag.layer.cornerRadius = 5
        
        foodTag.layer.masksToBounds = true
        foodTag.layer.cornerRadius = 5
        
        hungryTag.layer.masksToBounds = true
        hungryTag.layer.cornerRadius = 5
        
        scheduleBackground.layer.masksToBounds = true
        scheduleBackground.layer.cornerRadius = 8
        
        scheduleBackground2.layer.masksToBounds = true
        scheduleBackground2.layer.cornerRadius = 8
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
