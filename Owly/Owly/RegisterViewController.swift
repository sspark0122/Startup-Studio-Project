//
//  RegisterViewController.swift
//  Owly
//
//  Created by Sung on 4/11/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
    
    
    //Pre-linked IBOutlets
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func registerButton(_ sender: Any) {
        //Set up a new user on our Firbase database
        SVProgressHUD.show()
        
        Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!){
            (user, error) in
            
            if error != nil {
                let alert = UIAlertController(title: "Sign In Failed", message: error?.localizedDescription, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true, completion: nil)
                SVProgressHUD.dismiss()
                print(error!)
                
            }else{
                //success
                print("Registration Successful!")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToMain", sender: self)
            }
        }
    }
}
