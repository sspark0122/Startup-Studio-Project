//
//  PreviewViewController.swift
//  Owly
//
//  Created by Sung on 4/24/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class PreviewViewController: UIViewController {

    @IBOutlet weak var browsingImage: UIImageView!
    @IBOutlet weak var captionTextField: UITextField!
    
    var newImage: UIImage!
    var name = "Sung"
    var caption = "is sleeping."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        browsingImage.image = newImage
        SVProgressHUD.show()
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(update), userInfo: nil, repeats: false)
    }
    
    @objc func update() {
        SVProgressHUD.dismiss()
        captionTextField.text = name + " " + caption
    }
    
    @IBAction func confirmButton(_ sender: Any) {
        
        // Get a reference to the storage service using the default Firebase App
        let storage = Storage.storage()
        
        // Create a storage reference from our storage service
        let storageRef = storage.reference()
        
        guard let scaledImage = newImage.scaledToSafeUploadSize, let data = scaledImage.jpegData(compressionQuality: 0.4) else {
            return
        }
        
        let metadata = StorageMetadata()
        metadata.contentType = "image/jpeg"
        
        let imageName = [UUID().uuidString, String(Date().timeIntervalSince1970)].joined()
        
        // Create a reference to the file you want to upload
        let riversRef = storageRef.child("images/" + imageName)
        
        // Upload the file to the path "images/rivers.jpg"
        let uploadTask = riversRef.putData(data, metadata: metadata) { (metadata, error) in
            guard let metadata = metadata else {
                // Uh-oh, an error occurred!
                return
            }
            // Metadata contains file metadata such as size, content-type.
            let size = metadata.size
            
            // Access to download URL after upload.
            riversRef.downloadURL { (url, error) in
                guard let downloadURL = url else {
                    // Uh-oh, an error occurred!
                    return
                }
                
                // Send a message with image URL
                let messageDB = Database.database().reference().child("Messages")
                
                var msg = self.captionTextField.text
                
                let messageDictionary = ["Sender": Auth.auth().currentUser?.email,
                                         "MessageBody": msg,
                                         "ImageURL": downloadURL.absoluteString]
                
                messageDB.childByAutoId().setValue(messageDictionary) {
                    (error, reference) in
                    if error != nil {
                        print(error!)
                    } else {
                        print("Message saved successfully!")
                    }
                }
            }
        }
        
        // Call ChatViewController
        let chatViewController = storyboard?.instantiateViewController(withIdentifier: "ChatViewController") as? ChatViewController
        self.navigationController?.pushViewController(chatViewController!, animated: true)
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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

extension UIImage {
    
    var scaledToSafeUploadSize: UIImage? {
        let maxImageSideLength: CGFloat = 256
        
        let largerSide: CGFloat = max(size.width, size.height)
        let ratioScale: CGFloat = largerSide > maxImageSideLength ? largerSide / maxImageSideLength : 1
        let newImageSize = CGSize(width: size.width / ratioScale, height: size.height / ratioScale)
        
        return image(scaledTo: newImageSize)
    }
    
    func image(scaledTo size: CGSize) -> UIImage? {
        defer {
            UIGraphicsEndImageContext()
        }
        
        UIGraphicsBeginImageContextWithOptions(size, true, 0)
        draw(in: CGRect(origin: .zero, size: size))
        
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
