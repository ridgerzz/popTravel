//
//  BaseView.swift
//  popTravel
//
//  Created by Ridge Lanuza on 8/3/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

import UIKit

@IBDesignable class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }
    
    func configure() {
        
    }
}
