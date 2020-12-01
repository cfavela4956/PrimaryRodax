//
//  HomePageActivitiesViewController.swift
//  RodaxTravel
//
//  Created by Student on 12/1/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class HomePageActivitiesViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
        @IBOutlet weak var view2: UIView!
        @IBOutlet weak var view3: UIView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
        @IBAction func segmentedControlChanged(_ sender: Any) {

        func showView1() {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
        }

        func showView2() {
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = true
        }
            
        func showView3() {
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = false
        }

        guard let segmentedControl = sender as?
            UISegmentedControl else { return }
        if segmentedControl.selectedSegmentIndex == 0 {
            showView1()

        }
           else if segmentedControl.selectedSegmentIndex == 1 {
                showView2()

            }
            else {
                       showView3()
                   }
            
            
        }

}
