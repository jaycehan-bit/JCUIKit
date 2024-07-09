//
//  StorageUtils.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/20.
//

import Foundation

struct JCTableViewCellIdentifier {
    static let JCHomeCellIdentifier = "JCHomeCellIdentifier"
}

struct ViewControllerList {
    static let JCHomeContrllerList: NSArray = []
}


struct JCHomeControllerConfig {
    static let cellIdentifier = "JCHomeCellIdentifier"
    static let cellHeight: CGFloat = 60
    static let JCHomeContrllerList: NSArray = ["JCUIStorage.JCIGListViewController"]
}


struct JCIGListConfig {
    static let imageCellIdentifier = "JCListImageCollectionViewCell"
    static let horizontalCellIdentifier = "JCHorizontalCollectionViewCell"
    static let verticalCellIdentifier = "JCVerticalCollectionViewCell"
}
