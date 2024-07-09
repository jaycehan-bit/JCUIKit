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
        textLabel.textColor = UIColor.black
        textLabel.font = UIFont.systemFont(ofSize: 18)
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.addSubview(textLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let imageHeight = self.contentView.bounds.size.height - 24
        let imageWidth = imageHeight / JCIGListUtils.imageScale
        imageView.frame = CGRect(origin: CGPoint.init(x: 16, y: 12), size: CGSize(width: imageWidth, height: imageHeight))
        let labelWidth = self.contentView.bounds.size.width - imageWidth - 48
        textLabel.frame = CGRect(origin: CGPoint(x: imageWidth + 32, y: 12), size: CGSize(width: labelWidth, height: 20))
    }
    
    public func bindViewModel(viewModel: JCHorizontalCellViewModel?) {
        imageView.image = UIImage.init(named: viewModel?.imageName ?? "")
        textLabel.text = viewModel?.title
    }
}
