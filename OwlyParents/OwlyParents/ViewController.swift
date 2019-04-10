//
//  ViewController.swift
//  OwlyParents
//
//  Created by Carolyn Haitz Olaguivel on 3/14/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var learningTag: UILabel!
    @IBOutlet weak var concentratedTag: UILabel!
    @IBOutlet weak var scheduleBackground: UITextView!
    @IBOutlet weak var foodTag: UILabel!
    @IBOutlet weak var hungryTag: UILabel!
    @IBOutlet weak var scheduleBackground2: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarImage()
        
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
    
        func addNavBarImage() {
    
            let navController = navigationController!
    
            let image = UIImage(named: "logo.png")
            let imageView = UIImageView(image: image)
    
            let bannerWidth = navController.navigationBar.frame.size.width
            let bannerHeight = navController.navigationBar.frame.size.height
    
            let bannerX = bannerWidth / 2 - image!.size.width / 2
            let bannerY = bannerHeight / 2 - image!.size.height / 2
    
            imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
            imageView.contentMode = .scaleAspectFit
    
            navigationItem.titleView = imageView
    
    
        }

}

