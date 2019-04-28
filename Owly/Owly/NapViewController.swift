//
//  NapViewController.swift
//  Owly
//
//  Created by Carolyn Haitz Olaguivel on 4/26/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit

class NapViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button10: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        button1.backgroundColor = UIColor.lightGray
        button3.backgroundColor = UIColor.lightGray
        button6.backgroundColor = UIColor.lightGray
        button7.backgroundColor = UIColor.lightGray
        button10.backgroundColor = UIColor.lightGray
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        
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
    
    @IBAction func buttonTapped3(_ sender: UIButton) {
        
        if button3.backgroundColor == UIColor.lightGray {
            button3.backgroundColor = UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1)
        }
            
        else if button3.backgroundColor == UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1) {
            button3.backgroundColor = UIColor.lightGray
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
    
    @IBAction func buttonTapped10(_ sender: UIButton) {
        if button10.backgroundColor == UIColor.lightGray {
            button10.backgroundColor = UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1)
        }
            
        else if button10.backgroundColor == UIColor(red: 247/255, green: 190/255, blue: 65/255, alpha: 1) {
            button10.backgroundColor = UIColor.lightGray
        }
    }
    
    
    
    
    
    
    

}
