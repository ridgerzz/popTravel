//
//  MenuViewController.swift
//  popTravel
//
//  Created by Ridge Lanuza on 7/25/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

import UIKit

enum MenuType: Int {
    case home
    case camera
    case profile
}

class MenuViewController: UITableViewController {

    var didTapMenuType: ((MenuType) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else { return }
        dismiss(animated: true) { [weak self] in
            print("dismissing: \(menuType)")
            self?.didTapMenuType?(menuType)
        }
    }


}
