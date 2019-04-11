//
//  LogInViewController.swift
//  Owly
//
//  Created by Sung on 4/11/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {
    
    // Textfields pre-linked with IBOutlets
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        //Log in the user
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) {
            (user, error) in
            
            if error != nil {
                let alert = UIAlertController(title: "Sign In Failed", message: error?.localizedDescription, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true, completion: nil)
                SVProgressHUD.dismiss()
                print(error!)
                
            } else {
                print("Log in successful!")
                
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToMain", sender: self)
            }
        }
    }
}
