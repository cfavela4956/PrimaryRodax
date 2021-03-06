//
//  ConversationViewController.swift
//  RodaxTravel
//
//  Created by Student on 11/29/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ConversationViewController: UIViewController {
    
    override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .red
        }
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
            
            if !isLoggedIn {
                let vc = ChatLoginViewController()
                let nav = UINavigationController(rootViewController: vc)
                nav.modalPresentationStyle = .fullScreen
                present(nav, animated: false)
            }
        }

    }
