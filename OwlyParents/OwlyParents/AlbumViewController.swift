//
//  AlbumViewController.swift
//  OwlyParents
//
//  Created by Carolyn Haitz Olaguivel on 3/15/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {
    @IBOutlet weak var chloeEating: UIImageView!
    @IBOutlet weak var chloeHalloween: UIImageView!
    @IBOutlet weak var chloeDrawing: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chloeEating.layer.masksToBounds = true
        chloeEating.layer.cornerRadius = 5
        
        chloeDrawing.layer.masksToBounds = true
        chloeDrawing.layer.cornerRadius = 5
        
        chloeHalloween.layer.masksToBounds = true
        chloeHalloween.layer.cornerRadius = 5
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
