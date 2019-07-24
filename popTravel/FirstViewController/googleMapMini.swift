//
//  googleMapMini.swift
//  popTravel
//
//  Created by Ridge Lanuza on 7/13/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

import UIKit
import GoogleMaps

class googleMapMini: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GMSServices.provideAPIKey("AIzaSyCPwKNE0A9DnHWydmJLBXFlxLrhcOnsFHk")
        let camera = GMSCameraPosition.camera(withLatitude: 36.114700, longitude: -115.172864, zoom: 14)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        mapView.isUserInteractionEnabled = false
        
    }
}
