//
//  ATabController.swift
//  popTravel
//
//  Created by Ridge Lanuza on 7/13/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

import UIKit

@objc enum Tab: Int {
    case first = 0
    case second
    case third
}


///This protocol is implemented by the tab view controller MyTabController. It lets a child view controller ask the tab view controller to switch the current tab.
///Each child view controller that inherits from the ATabController class has a property tabDelegate that conforms to this protocol
@objc protocol TabController {
    @objc func switchTab(to: Tab)
}

///This is the base class for child view controllers that manage tabs in the tab view controller. It has a delegate tabDelegate that can be called to switch tabs.
class ATabController: UIViewController {
    
    weak var tabDelegate: TabController?
}
