//
//  CameraViewController.swift
//  Owly
//
//  Created by Carolyn Haitz Olaguivel on 3/14/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = true

        present(imagePicker, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let userPickedImage = info[.originalImage] as? UIImage {
            imageView.image = userPickedImage
        }

        imagePicker.dismiss(animated: true, completion: nil)
    }


}

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

