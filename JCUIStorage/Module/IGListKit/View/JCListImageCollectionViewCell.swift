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
        imageView.backgroundColor = UIColor.green
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let imageHeight = contentView.bounds.size.height
        let imageWidth = imageHeight / JCIGListUtils.imageScale
        imageView.frame = CGRect(origin: CGPoint(x: 16, y: 0), size: CGSize(width: imageWidth, height: imageHeight))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func bindViewModel(viewModel: JCListCellViewModel?) {
        if (viewModel != nil) {
            imageView.image = UIImage.init(named: viewModel!.imageName)
        }
    }
}
