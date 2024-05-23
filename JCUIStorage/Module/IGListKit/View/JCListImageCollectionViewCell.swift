//
//  JCListImageCollectionViewCell.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/20.
//

import UIKit

class JCListImageCollectionViewCell: UICollectionViewCell {
    var imageView: UIImageView
    
    override init(frame: CGRect) {
        imageView = UIImageView.init(frame: CGRect.zero)
        super.init(frame: frame)
        contentView.addSubview(imageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
