//
//  JCHorizontalCollectionViewCell.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/20.
//

import UIKit

class JCHorizontalCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView
    var textLabel: UILabel
    
    override init(frame: CGRect) {
        imageView = UIImageView.init(frame: CGRect.zero)
        textLabel = UILabel.init(frame: CGRect.zero)
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.addSubview(textLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 0, height: 0))
        textLabel.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 0, height: 0))
    }
}
