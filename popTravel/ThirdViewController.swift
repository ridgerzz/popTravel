//
//  File.swift
//  popTravel
//
//  Created by Ridge Lanuza on 5/29/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

import UIKit
import FSCalendar

class ThirdViewController: UIViewController {
    
    fileprivate weak var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calendar = FSCalendar(frame: CGRect(x: 0, y: 0, width: 320, height: 300))
        //        calendar.dataSource = self
        //        calendar.delegate = self
        view.addSubview(calendar)
        self.calendar = calendar
    }
    
    
}

extension ThirdViewController: FSCalendarDataSource, FSCalendarDelegate {
    
}




