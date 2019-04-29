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
    
//    var imageURL: URL? = nil
//
//    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        imagePicker.delegate = self
//        imagePicker.sourceType = .camera
//        imagePicker.allowsEditing = true
//
//        present(imagePicker, animated: true, completion: nil)
    }

//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let userPickedImage = info[.editedImage] as? UIImage {
//            imageView.image = userPickedImage
//            
//            // Call Preview ViewController
//            let previewViewController = storyboard?.instantiateViewController(withIdentifier: "PreviewViewController") as? PreviewViewController
//            previewViewController?.newImage = userPickedImage
//            self.navigationController?.pushViewController(previewViewController!, animated: true)
//        }
//
//        imagePicker.dismiss(animated: true, completion: nil)
//    }
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
