//
//  MyJournalViewController.swift
//  RodaxTravel
//
//  Created by Student on 11/10/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class MyJournalViewController: UIViewController {

    @IBAction func onWriteAnEntryButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "WriteAnEntrySegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
