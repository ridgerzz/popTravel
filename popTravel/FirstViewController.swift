//
//  FirstViewController.swift
//  popTravel
//
//  Created by Ridge Lanuza on 5/29/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

import UIKit

class FirstViewController: ATabController, UIGestureRecognizerDelegate {

    @IBOutlet var mapView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapped(gestureRecognizer:)))
        mapView.addGestureRecognizer(tapRecognizer)
        tapRecognizer.delegate = self
    }
    
    @objc func tapped(gestureRecognizer: UITapGestureRecognizer) {
        //go to tab
        tabDelegate?.switchTab(to:  .second)
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        if touch.view!.superview!.superclass! .isSubclass(of: UIButton.self) {
            return false
        }
        return true
    }
}

