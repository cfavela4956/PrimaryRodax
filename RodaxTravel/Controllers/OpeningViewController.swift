//
//  ViewController.swift
//  RodaxTravel
//
//  Created by Student on 10/13/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class OpeningViewController: UIViewController {
    
    @IBAction func onCreateAccountButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "CreateProfileSegue", sender: self)
    }
    
    @IBAction func onLogInButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "LogInSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("🖖🏻")
        print("Hello")
    }
   
    
}

