//
//  RestaurantTableTableViewController.swift
//  popTravel
//
//  Created by Ridge Lanuza on 8/4/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

import UIKit

protocol ListActions: class {
    func didTapCell(_ viewmodel: RestaurantListViewModel)
}

class RestaurantTableViewController: UITableViewController {
    
    var viewModels = [RestaurantListViewModel]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    weak var delegete: ListActions?

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModels.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantsCell", for: indexPath) as! RestaurantTableViewCell

        let vm = viewModels[indexPath.row]
        cell.configure(with: vm)
        
        return cell
    }
    
    // MARK: - Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vm = viewModels[indexPath.row]
        delegete?.didTapCell(vm)
    }
}
