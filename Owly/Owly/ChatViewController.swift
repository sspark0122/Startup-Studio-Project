//
//  ChatViewController.swift
//  Owly
//
//  Created by Sung on 4/11/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore
import ChameleonFramework

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate{
    
    // Declare instance variables
    var messageArray : [Message] = [Message]()
    
    // Link to the IBOutlets
    @IBOutlet weak var heightConst: NSLayoutConstraint!
    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var msgTextField: UITextField!
    @IBOutlet weak var msgTableView: UITableView!
    
    // Teacher account
    var teacherAccount = "teacher@owly.com"
    
    // Image from camera
    var imageURL: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(imageURL.absoluteString)
        
        // Set delegate and datasource
        msgTableView.delegate = self
        msgTableView.dataSource = self
        
        // Set the delegate of the text field
        msgTextField.delegate = self
        
        // Set the tapGesture
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tableViewTapped))
        msgTableView.addGestureRecognizer(tapGesture)
        
        // Register your MessageCell.xib file
        msgTableView.register(UINib(nibName: "MessageCell", bundle: nil),
                                  forCellReuseIdentifier: "customMessageCell")
        
        configureTableView()
        retrieveMessages()
        retrieveImages()
        
        msgTableView.separatorStyle = .none
        
        if Auth.auth().currentUser?.email as String! != teacherAccount{
            msgTextField.isHidden = true
            msgTextField.isEnabled = false
            
            sendBtn.isHidden = true
            sendBtn.isEnabled = false
        }
    }
    
    ///////////////////////////////////////////
    //MARK: - TableView DataSource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath)
            as! CustomMessageCell
        
        cell.messageBody.text = messageArray[indexPath.row].messageBody
        cell.senderUsername.text = messageArray[indexPath.row].sender
        cell.avatarImageView.image = UIImage(named: "egg")
        
        if cell.senderUsername.text == Auth.auth().currentUser?.email as String!{
            // Messages we sent
            cell.avatarImageView.backgroundColor = UIColor.flatMint()
            cell.messageBackground.backgroundColor = UIColor.flatSkyBlue()
        }else{
            cell.avatarImageView.backgroundColor = UIColor.flatWatermelon()
            cell.messageBackground.backgroundColor = UIColor.flatGray()
        }
        
        return cell
    }
    
    // Declare tableViewTapped
    @objc func tableViewTapped() {
        msgTextField.endEditing(true)
    }
    
    // Declare configureTableView
    func configureTableView(){
        msgTableView.rowHeight = UITableView.automaticDimension
        msgTableView.estimatedRowHeight = 120.0
    }
    
    ///////////////////////////////////////////
    //MARK:- TextField Delegate Methods
    
    // Declare textFieldDidBeginEditing
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.5){
            self.heightConst.constant = 260
//            self.heightConst.constant = 308
            self.view.layoutIfNeeded()
        }
    }
    
    // Declare textFieldDidEndEditing
    func textFieldDidEndEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.5){
            self.heightConst.constant = 50
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func sendBtnPressed(_ sender: Any) {
        msgTextField.endEditing(true)
        
        // Send the message to Firebase and save it in our database
        msgTextField.isEnabled = false
        sendBtn.isEnabled = false
        
        let messageDB = Database.database().reference().child("Messages")
        
        let messageDictionary = ["Sender": Auth.auth().currentUser?.email,
                                 "MessageBody": msgTextField.text!]
        
        messageDB.childByAutoId().setValue(messageDictionary) {
            (error, reference) in
            if error != nil {
                print(error!)
            } else {
                print("Message saved successfully!")
                
                self.msgTextField.isEnabled = true
                self.sendBtn.isEnabled = true
                self.msgTextField.text = ""
            }
        }
    }
    
    // Create the retrieveMessages method
    func retrieveMessages() {
        let messageDB = Database.database().reference().child("Messages")
        
        messageDB.observe(.childAdded) { (snapshot) in
            let snapshotValue = snapshot.value as! Dictionary<String,String>
            let text = snapshotValue["MessageBody"]!
            let sender = snapshotValue["Sender"]!
            
            let message = Message()
            message.messageBody = text
            message.sender = sender
            
            self.messageArray.append(message)
            
            self.configureTableView()
            self.msgTableView.reloadData()
        }
    }
    
    func retrieveImages(){
        
        let imageDB = Storage.storage().reference().child("images/")
        
//        imageDB.observe(.childAdded){ (snapshot)  in
//
//            // Get download URL from snapshot
//            let downloadURL = snapshot.value as! String
//
//            print("downloaded image url: "+downloadURL)
//
//            // Create a storage reference from the URL
//            let storageRef = Storage.storage().reference(forURL: downloadURL)
//
//            // Download the data, assuming a max size of 1MB (you can change this as necessary)
//            storageRef.getData(maxSize: 1 * 128 * 128) { (data, error) -> Void in
//                if let error = error {
//                    // Uh-oh, an error occurred!
//                } else {
//                    // Data for "images/island.jpg" is returned
//                    let image = UIImage(data: data!)
//
//                    let message = Message()
//                    message.userImage = image
//                    self.messageArray.append(message)
//
//                    self.configureTableView()
//                    self.msgTableView.reloadData()
//                }
//            }
//        }
    }
}
