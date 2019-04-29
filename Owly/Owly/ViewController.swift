//
//  ViewController.swift
//  Owly
//
//  Created by Carolyn Haitz Olaguivel on 3/12/19.
//  Copyright © 2019 carolaguivel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = true
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let userPickedImage = info[.editedImage] as? UIImage {
            
            // Call Preview ViewController
            let previewViewController = storyboard?.instantiateViewController(withIdentifier: "PreviewViewController") as? PreviewViewController
            previewViewController?.newImage = userPickedImage
            self.navigationController?.pushViewController(previewViewController!, animated: true)
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cameraButton(_ sender: Any) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    //    func addNavBarImage() {
//
//        let navController = navigationController!
//
//        let image = #imageLiteral(resourceName: "titlelogo.png")
//        let imageView = UIImageView(image: image)
//
//        let bannerWidth = navController.navigationBar.frame.size.width
//        let bannerHeight = navController.navigationBar.frame.size.height
//
//        let bannerX = bannerWidth / 2 - image.size.width / 2
//        let bannerY = bannerHeight / 2 - image.size.height / 2
//
//        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
//        imageView.contentMode = .scaleAspectFit
//
//        navigationItem.titleView = imageView
//
//
//    }


}


