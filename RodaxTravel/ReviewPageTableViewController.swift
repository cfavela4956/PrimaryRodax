//
//  ReviewPageTableViewController.swift
//  RodaxTravel
//
//  Created by Student on 11/14/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ReviewPageTableViewController: UITableViewController {


        @IBOutlet weak var cancelBarButton: UIBarButtonItem!
        @IBOutlet weak var saveBarButton: UIBarButtonItem!
        @IBOutlet weak var nameLabel: UILabel!
        @IBOutlet weak var addressLabel: UILabel!
        @IBOutlet weak var postedByLabel: UILabel!
        @IBOutlet weak var starBackgroundColor: UIView!
        @IBOutlet weak var reviewTitleField: UITextField!
        @IBOutlet weak var reviewDateLabel: UILabel!
        @IBOutlet weak var reviewTextView: UITextView!
        @IBOutlet weak var deleteButton: UIButton!
        
        
        @IBOutlet var starButtonCollection: [UIButton]!

        
        override func viewDidLoad() {
            super.viewDidLoad()
print("Ben is cool")
        }

        func leaveViewController() {
                let isPresentingInAddMode = presentingViewController is UINavigationController
                if isPresentingInAddMode {
                    dismiss(animated: true, completion: nil)
                } else {
                    navigationController?.popViewController(animated: true)
                }
            }
            
            
            
            @IBAction func reviewTitleChange(_ sender: UITextField) {
            }
            
            @IBAction func reviewTitleDonePressed(_ sender: UITextField) {
            }
            
            @IBAction func deleteButtonPressed(_ sender: UIButton) {
            }
            @IBAction func cancelButtonPressed(_ sender: Any) {
                leaveViewController()
            }
            @IBAction func saveButtonPressed(_ sender: Any) {
            }

    

}
