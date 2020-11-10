//
//  UploadProfileImageViewController.swift
//  RodaxTravel
//
//  Created by Student on 11/7/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class UploadProfileImageViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet var imageView: UIImageView!
    
    @IBAction func onDoneButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "TabBarSegue", sender: self)
    }
    //sends user from Create Your Profile to Home Page
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func didTapButton(){
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
                    
            if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePIckerControllerEditedImage")]as? UIImage {
                imageView.image = image
            }
                    
            picker.dismiss(animated: true, completion: nil)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }
    }
}
/*
   extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
       
       func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
                   
           if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePIckerControllerEditedImage")]as? UIImage {
               imageView.image = image
           }
                   
           picker.dismiss(animated: true, completion: nil)
       }
       
       func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
           picker.dismiss(animated: true, completion: nil)
       }
       
 }
*/
