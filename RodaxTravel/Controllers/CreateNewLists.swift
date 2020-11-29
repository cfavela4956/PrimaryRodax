//
//  CreateNewLists.swift
//  RodaxTravel
//
//  Created by Student on 11/3/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class CreateNewLists: UIViewController {

    @IBOutlet var titleField: UITextField!
    @IBOutlet var noteField: UITextView!

    public var completion: ((String, String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleField.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
    }
    
    @objc func didTapSave(){
        
        if let text = titleField.text {
            completion?(text, noteField.text)
            self.navigationController?.popViewController(animated: true)
        }
    }
   
    

    

}
