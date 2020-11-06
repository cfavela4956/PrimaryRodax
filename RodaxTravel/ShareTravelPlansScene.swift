//
//  ShareTravelPlansScene.swift
//  RodaxTravel
//
//  Created by Student on 11/2/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ShareTravelPlansScene: UIViewController {

    
    @IBOutlet weak var textFieldPressed: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sharePressed(_ sender: Any) {
        let items = [URL(string: "https://www.apple.com")]
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
        
        
      //  activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true, completion: nil)
        
    }
    

}
