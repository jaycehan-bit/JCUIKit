//
//  JCVerticalCollectionViewCell.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/20.
//

import UIKit

class JCVerticalCollectionViewCell: UICollectionViewCell {
    var imageView: UIImageView
    var titleLabel: UILabel
    var subtitleLabel: UILabel
    
    override init(frame: CGRect) {
        imageView = UIImageView.init(frame: CGRect.zero)
        titleLabel = UILabel.init(frame: CGRect.zero)
        titleLabel.font = UIFont.systemFont(ofSize: 16)
        titleLabel.textColor = UIColor.black
        subtitleLabel = UILabel.init(frame: CGRect.zero)
        subtitleLabel.font = UIFont.systemFont(ofSize: 14)
        subtitleLabel.textColor = UIColor.black
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
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
        titleLabel.frame = CGRect(origin: CGPoint(x: imageWidth + 32, y: 12), size: CGSize(width: labelWidth, height: 20))
        
        subtitleLabel.frame = CGRect(origin: CGPoint(x: imageWidth + 32, y: 36), size: CGSize(width: labelWidth, height: 20))
    }
    
    public func bindViewModel(viewModel: JCVerticalCellViewModel) {
        imageView.image = UIImage.init(named: viewModel.imageName)
        titleLabel.text = viewModel.title
        subtitleLabel.text = viewModel.subtitle
        self.setNeedsLayout()
    }
}
