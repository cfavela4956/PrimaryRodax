//
//  HomePageViewController.swift
//  RodaxTravel
//
//  Created by Student on 10/27/20.
//  Copyright © 2020 Student. All rights reserved.
//
import SideMenu
import UIKit

class HomePageViewController: UIViewController {

    
 
    override func viewDidLoad() {
        super.viewDidLoad()

      
       }
    override func viewDidAppear(_ animated: Bool) {
        createAlert(title: "Reminder", message: "Did you bring your mask?")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func createAlert (title:String, message: String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        //creating a alert button
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: { (action) in alert.dismiss(animated: true, completion: nil)
            print ("YES")
        }))
        alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: { (action) in alert.dismiss(animated: true, completion: nil)
            print ("NO")
        }))
            self.present(alert, animated: true, completion: nil)
            }

            
}
}
