//
//  CameraViewController.swift
//  Owly
//
//  Created by Carolyn Haitz Olaguivel on 3/14/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit
import Firebase

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageURL: URL? = nil
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = true

        present(imagePicker, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let userPickedImage = info[.editedImage] as? UIImage {
            imageView.image = userPickedImage
            
//            // Get a reference to the storage service using the default Firebase App
//            let storage = Storage.storage()
//
//            // Create a storage reference from our storage service
//            let storageRef = storage.reference()
//
//            guard let scaledImage = userPickedImage.scaledToSafeUploadSize, let data = scaledImage.jpegData(compressionQuality: 0.4) else {
//                return
//            }
//
//            let metadata = StorageMetadata()
//            metadata.contentType = "image/jpeg"
//
//            let imageName = [UUID().uuidString, String(Date().timeIntervalSince1970)].joined()
//
//            // Create a reference to the file you want to upload
//            let riversRef = storageRef.child("images/" + imageName)
//
//            // Upload the file to the path "images/rivers.jpg"
//            let uploadTask = riversRef.putData(data, metadata: metadata) { (metadata, error) in
//                guard let metadata = metadata else {
//                    // Uh-oh, an error occurred!
//                    return
//                }
//                // Metadata contains file metadata such as size, content-type.
//                let size = metadata.size
//
//                // Access to download URL after upload.
//                riversRef.downloadURL { (url, error) in
//                    guard let downloadURL = url else {
//                        // Uh-oh, an error occurred!
//                        return
//                    }
//
//                    // Send a message with image URL
//                    let messageDB = Database.database().reference().child("Messages")
//
//                    let messageDictionary = ["Sender": Auth.auth().currentUser?.email,
//                                             "MessageBody": "",
//                                             "ImageURL": downloadURL.absoluteString]
//
//                    messageDB.childByAutoId().setValue(messageDictionary) {
//                        (error, reference) in
//                        if error != nil {
//                            print(error!)
//                        } else {
//                            print("Message saved successfully!")
//                        }
//                    }
//                }
//            }

            // Call ChatViewController
//            let chatViewController = storyboard?.instantiateViewController(withIdentifier: "ChatViewController") as? ChatViewController
//            self.navigationController?.pushViewController(chatViewController!, animated: true)
            
            // Call Preview ViewController
            let previewViewController = storyboard?.instantiateViewController(withIdentifier: "PreviewViewController") as? PreviewViewController
            previewViewController?.newImage = userPickedImage
            self.navigationController?.pushViewController(previewViewController!, animated: true)
        }

        imagePicker.dismiss(animated: true, completion: nil)
    }
}

//extension UIImage {
//
//    var scaledToSafeUploadSize: UIImage? {
//        let maxImageSideLength: CGFloat = 256
//
//        let largerSide: CGFloat = max(size.width, size.height)
//        let ratioScale: CGFloat = largerSide > maxImageSideLength ? largerSide / maxImageSideLength : 1
//        let newImageSize = CGSize(width: size.width / ratioScale, height: size.height / ratioScale)
//
//        return image(scaledTo: newImageSize)
//    }
//
//    func image(scaledTo size: CGSize) -> UIImage? {
//        defer {
//            UIGraphicsEndImageContext()
//        }
//
//        UIGraphicsBeginImageContextWithOptions(size, true, 0)
//        draw(in: CGRect(origin: .zero, size: size))
//
//        return UIGraphicsGetImageFromCurrentImageContext()
//    }
//
//}

//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        imagePicker.delegate = self
//        imagePicker.sourceType = .camera
//        imagePicker.allowsEditing = true
//
//        present(imagePicker, animated: true, completion: nil)
//    }
//
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let userPickedImage = info[.originalImage] as? UIImage {
//            imageView.image = userPickedImage
//        }
//
//        imagePicker.dismiss(animated: true, completion: nil)
//    }

