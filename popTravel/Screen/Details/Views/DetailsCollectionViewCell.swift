//
//  DetailsCollectionViewCell.swift
//  popTravel
//
//  Created by Ridge Lanuza on 11/20/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

import UIKit

class DetailsCollectionViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func setup() {
        contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            imageView.leftAnchor.constraint(equalTo: leftAnchor),
            ])
    }
}
