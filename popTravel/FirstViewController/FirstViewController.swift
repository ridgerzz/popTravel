//
//  FirstViewController.swift
//  popTravel
//
//  Created by Ridge Lanuza on 5/29/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

import UIKit

//TODO: add protocols

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIGestureRecognizerDelegate {

    @IBOutlet var mapView: UIView!
    @IBOutlet var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setting yourself as the delegate and datasource
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
        // Do any additional setup after loading the view.
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapped(gestureRecognizer:)))
        mapView.addGestureRecognizer(tapRecognizer)
        tapRecognizer.delegate = self
        
        // register adcell.xib here
        mainTableView.register(UINib(nibName: "CustomAdvertismentCell", bundle: nil), forCellReuseIdentifier: "customAdCell")
    
        configureTableView()
    }
    
    //MARK: - TableView DataSource Methods
    
    //TODO: Declare cellForRowAtIndexPath
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customAdCell", for: indexPath) as! CustomAdvertismentCell
    
        let titleArray = ["Wecome to Vegas", "Shows and more", "create an account"]
        
        cell.titleLabel.text = titleArray[indexPath.row]
        
        return cell
    }
    
    // declare numberofrowssection
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
    
    // declare configuretableview here
    
    func configureTableView() {
        mainTableView.rowHeight = UITableView.automaticDimension
        mainTableView.estimatedRowHeight = 120.0
    }
    
    @objc func tapped(gestureRecognizer: UITapGestureRecognizer) {
        //go to tab
        let appDelegate  = UIApplication.shared.delegate as! AppDelegate
        let tabBarController = appDelegate.window.rootViewController as! UITabBarController
        tabBarController.selectedIndex = 1
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        if touch.view!.superview!.superclass! .isSubclass(of: UIButton.self) {
            return false
        }
        return true
    }
}

