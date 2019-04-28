//
//  FoodProcessViewController.swift
//  Owly
//
//  Created by Carolyn Haitz Olaguivel on 4/26/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit

class FoodProcessViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button1.backgroundColor = UIColor.lightGray
        button2.backgroundColor = UIColor.lightGray
        button3.backgroundColor = UIColor.lightGray
        button4.backgroundColor = UIColor.lightGray
        button5.backgroundColor = UIColor.lightGray
        button6.backgroundColor = UIColor.lightGray
        button7.backgroundColor = UIColor.lightGray
        button8.backgroundColor = UIColor.lightGray
        button9.backgroundColor = UIColor.lightGray
    }
    

    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func buttonTapped1(_ sender: UIButton) {
        
        if button1.backgroundColor == UIColor.lightGray {
            button1.backgroundColor = UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1)
        }
            
        else if button1.backgroundColor == UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1) {
            button1.backgroundColor = UIColor.lightGray
        }
        
    }
    
    @IBAction func buttonTapped2(_ sender: UIButton) {
        
        if button2.backgroundColor == UIColor.lightGray {
            button2.backgroundColor = UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1)
        }
            
        else if button2.backgroundColor == UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1) {
            button2.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBAction func buttonTapped3(_ sender: UIButton) {
        
        if button3.backgroundColor == UIColor.lightGray {
            button3.backgroundColor = UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1)
        }
            
        else if button3.backgroundColor == UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1) {
            button3.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBAction func buttonTapped4(_ sender: UIButton) {
        
        if button4.backgroundColor == UIColor.lightGray {
            button4.backgroundColor = UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1)
        }
            
        else if button4.backgroundColor == UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1) {
            button4.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBAction func buttonTapped5(_ sender: UIButton) {
        
        if button5.backgroundColor == UIColor.lightGray {
            button5.backgroundColor = UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1)
        }
            
        else if button5.backgroundColor == UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1) {
            button5.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBAction func buttonTapped6(_ sender: UIButton) {
        
        if button6.backgroundColor == UIColor.lightGray {
            button6.backgroundColor = UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1)
        }
            
        else if button6.backgroundColor == UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1) {
            button6.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBAction func buttonTapped7(_ sender: UIButton) {
        
        if button7.backgroundColor == UIColor.lightGray {
            button7.backgroundColor = UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1)
        }
            
        else if button7.backgroundColor == UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1) {
            button7.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBAction func buttonTapped8(_ sender: Any) {
        if button8.backgroundColor == UIColor.lightGray {
            button8.backgroundColor = UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1)
        }
            
        else if button8.backgroundColor == UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1) {
            button8.backgroundColor = UIColor.lightGray
        }
    
    }
    
    @IBAction func buttonTapped9(_ sender: UIButton) {
        
        if button9.backgroundColor == UIColor.lightGray {
            button9.backgroundColor = UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1)
        }
            
        else if button9.backgroundColor == UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1) {
            button9.backgroundColor = UIColor.lightGray
        }
    }
    
    
    
    
}
