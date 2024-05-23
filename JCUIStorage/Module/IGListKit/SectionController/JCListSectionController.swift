//
//  JCListSectionController.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/20.
//

import UIKit
import IGListKit

class JCListSectionController: ListSectionController {
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        return collectionContext!.dequeueReusableCell(of: UICollectionViewCell.self, for: self, at: index)
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize.zero
    }
}
