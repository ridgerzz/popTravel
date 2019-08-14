//
//  AppDelegate.swift
//  popTravel
//
//  Created by Ridge Lanuza on 5/29/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

import UIKit
import Moya

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window = UIWindow()
    let locationService = LocationService()
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let service = MoyaProvider<YelpService.BusinessesProvider>()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        service.request(.search(lat: 36.114700, long: -115.172864)) { (result) in
            switch result {
            case .success(let response):
                print(try? JSONSerialization.jsonObject(with: response.data, options: []))
            case .failure(let error):
                print("Error:  \(error)")
            }
        }
        // Override point for customization after application launch.
        
        switch locationService.status {
        case .notDetermined, .denied, .restricted:
            let locationViewController = storyboard.instantiateViewController(withIdentifier: "LocationViewController") as? LocationViewController
            locationViewController?.locationService = locationService
            window.rootViewController = locationViewController
        default:
            assertionFailure()
        }
        window.makeKeyAndVisible()
        
        return true
    }
}

