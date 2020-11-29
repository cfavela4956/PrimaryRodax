//
//  WebViewViewController.swift
//  RodaxTravel
//
//  Created by Student on 11/10/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController {

        private let webView: WKWebView = {
            let preferences = WKPreferences()
            preferences.javaScriptEnabled = true
            let configuration = WKWebViewConfiguration()
            let webView = WKWebView(frame: .zero, configuration: configuration)
            return webView
        }()
        
        private let url: URL
        
        init(url: URL, title: String) {
            self.url = url
            super.init(nibName: nil, bundle: nil)
            self.title = title
        }
            
        required init?(coder: NSCoder) {
            fatalError()
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemBackground
            view.addSubview(webView)
            webView.load(URLRequest(url: url))
            configureButtons()
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            webView.frame = view.bounds
        }
        
        private func configureButtons() {
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(didTapDone))
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(didTapRefresh))
        }
        
        @objc private func didTapDone() {
             dismiss(animated: true, completion: nil)
        }
        
        @objc private func didTapRefresh() {
            webView.load(URLRequest(url: url))
        }

        

    }

