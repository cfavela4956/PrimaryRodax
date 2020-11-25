//
//  ReviewPageTableViewController.swift
//  RodaxTravel
//
//  Created by Student on 11/14/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit
import Cosmos
import TinyConstraints

class ReviewPageTableViewController: UITableViewController {
    

    //Cosmos related
    lazy var cosmosView: CosmosView = {
        var view = CosmosView()
        //      view.settings.updateOnTouch = false
        view.settings.filledImage = UIImage(named: "GoldStar")?.withRenderingMode(.alwaysOriginal)
        view.settings.emptyImage = UIImage(named: "GoldStarEmpty")?.withRenderingMode(.alwaysOriginal)
        
        
        view.settings.totalStars = 5
        view.settings.starSize = 17
        view.settings.starMargin = 3.3
        view.settings.fillMode = .full
        
        view.text = "Rate me"
        view.settings.textColor = .red
        view.settings.textMargin = 10
        
        return view
    }()

    
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
        
        view.backgroundColor = .white
        
        //Cosmos related
        view.addSubview(cosmosView)
        cosmosView.centerInSuperview()
        
        cosmosView.didTouchCosmos = { rating in
            print("Rated: \(rating)")
        }
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
