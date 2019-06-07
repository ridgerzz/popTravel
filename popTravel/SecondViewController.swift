//
//  SecondViewController.swift
//  popTravel
//
//  Created by Ridge Lanuza on 5/29/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

import UIKit
import GoogleMaps

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GMSServices.provideAPIKey("AIzaSyCPwKNE0A9DnHWydmJLBXFlxLrhcOnsFHk")
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
    }


}

