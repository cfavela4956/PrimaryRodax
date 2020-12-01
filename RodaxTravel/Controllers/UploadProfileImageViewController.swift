//
//  UploadProfileImageViewController.swift
//  RodaxTravel
//
//  Created by Student on 11/7/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class UploadProfileImageViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

   
    
    @IBAction func onDoneButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "TabBarSegue", sender: self)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

}
}
