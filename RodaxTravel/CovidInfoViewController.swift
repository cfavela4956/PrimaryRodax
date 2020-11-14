//
//  CovidInfoViewController.swift
//  RodaxTravel
//
//  Created by Student on 11/10/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit
import WebKit

class CovidInfoViewController: UIViewController {

        /*private let button: UIButton = {
            let button = UIButton()
            button.setTitle("Show WebPage", for: .normal)
            button.backgroundColor = .link
            button.setTitleColor(.white, for: .normal)
            return button
        }()*/
    
    @IBOutlet weak var onMoreInfoPressed: UIButton!
    
        
        @IBOutlet var webview: WKWebView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.addSubview(onMoreInfoPressed)
            onMoreInfoPressed.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
            onMoreInfoPressed.frame = CGRect(x: 0, y: 0, width: 220, height: 50)
            onMoreInfoPressed.center = view.center
            // Do any additional setup after loading the view.
    //        webview.load(URLRequest(url: URL(string: "https://www.google.com")!))
        }
        
        @objc private func didTapButton() {
            guard let url = URL(string: "https://www.chicago.gov/city/en/sites/covid-19/home.html") else {
                return
            }
            let vc = WebViewViewController(url: url, title: "Chicago Covid-19 Info")
            let navVC = UINavigationController(rootViewController: vc)
            present(navVC, animated:true)
        }

}

