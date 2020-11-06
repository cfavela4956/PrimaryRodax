//
//  HomePageViewController.swift
//  RodaxTravel
//
//  Created by Student on 10/27/20.
//  Copyright © 2020 Student. All rights reserved.
//
import SideMenu
import UIKit

class HomePageViewController: UIViewController, MenuControllerDelegate {
    private var sideMenu: SideMenuNavigationController?
    
    
   // private let locationsAndActivitiesController =  Locations_Activites()
    private let myProfileController = MyProfile()
    private let myJournalController = MyJournal()
    private let covidController =  CovidController()
    private let shareTravelPlansScene = ShareTravelPlansScene()
    override func viewDidLoad() {
        super.viewDidLoad()
        let menu = MenuController(with: SideMenuItem.allCases)
       
        menu.delegate = self
        sideMenu = SideMenuNavigationController(rootViewController: menu)
        sideMenu?.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
        
        addChildControllers()
    }
    private func addChildControllers(){
          // addChild(locationsAndActivitiesController)
            addChild(myProfileController)
            addChild(myJournalController)
            addChild(covidController)
            addChild(shareTravelPlansScene)
        
        //view.addSubview(locationsAndActivitiesController.view)
        view.addSubview(myProfileController.view)
        view.addSubview(myJournalController.view)
        view.addSubview(covidController.view)
        view.addSubview(shareTravelPlansScene.view)
        
        myProfileController.view.frame = view.bounds
        myJournalController.view.frame = view.bounds
        covidController.view.frame = view.bounds
        shareTravelPlansScene.view.frame = view.bounds
        
        myProfileController.didMove(toParent: self)
        myJournalController.didMove(toParent: self)
        covidController.didMove(toParent: self)
        shareTravelPlansScene.didMove(toParent: self)
            
        myProfileController.view.isHidden = true
        myJournalController.view.isHidden = true
        covidController.view.isHidden = true
        shareTravelPlansScene.view.isHidden = true
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
    

    @IBAction func didTapMenuButton(){
        present(sideMenu!, animated: true)
    }
    func didSelectMenuItem(named: SideMenuItem) {
        sideMenu?.dismiss(animated: true, completion: {[weak self] in
            
            self?.title = named.rawValue
            
          
         
            
            }
            
//            if named == "My Profile" {
//                self?.myProfileController.view.isHidden = false
//                self?.myJournalController.view.isHidden = true
//               self?.covidController.view.isHidden = true
//                self?.shareTravelPlansScene.view.isHidden = true
    //    }
           // else if named == "Travel Guides" {
              //  self?.myProfileController.view.isHidden = true
              //  self?.myJournalController.view.isHidden = true
              //  self?.covidController.view.isHidden = true
              //  self?.shareTravelPlansScene.view.isHidden = true

            //}
//            else if named == "My Journal" {
//                self?.myProfileController.view.isHidden = true
//                self?.myJournalController.view.isHidden = false
//                self?.covidController.view.isHidden = true
//                self?.shareTravelPlansScene.view.isHidden = true
//            }
//            else if named == "Covid-19" {
//                self?.myProfileController.view.isHidden = true
//                self?.myJournalController.view.isHidden = true
//                self?.covidController.view.isHidden = false
//                self?.shareTravelPlansScene.view.isHidden = true
//            }
//            else if named == "Invite Friends" {
//                self?.myProfileController.view.isHidden = true
//                self?.myJournalController.view.isHidden = true
//                self?.covidController.view.isHidden = true
//                self?.shareTravelPlansScene.view.isHidden = false
//            }
            })
}
}
