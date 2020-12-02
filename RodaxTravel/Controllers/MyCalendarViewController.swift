//
//  MyCalendarViewController.swift
//  RodaxTravel
//
//  Created by Student on 12/2/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit
import FSCalendar

class MyCalendarViewController: UIViewController, FSCalendarDelegate {

    @IBOutlet var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
       let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MM-dd-YYYY"
        let string = formatter.string(from: date)
        print("\(string)")
    }
    


}
