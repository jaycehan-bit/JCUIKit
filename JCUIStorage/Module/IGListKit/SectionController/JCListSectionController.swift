//
//  JCListSectionController.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/20.
//

import UIKit
import IGListKit


final class JCListSectionController: ListSectionController {
    
    var object: JCListCellViewModel?
    
    override init() {
        super.init()
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell: JCListImageCollectionViewCell = collectionContext!.dequeueReusableCell(of: JCListImageCollectionViewCell.self, for: self, at: index) as! JCListImageCollectionViewCell
        cell.bindViewModel(viewModel: object)
        return cell
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let size: CGSize = CGSize(width: Double((collectionContext?.containerSize.width)!), height: JCIGListUtils.imageHeight)
        return size
    }
    
    override func didUpdate(to object: Any) {
        self.object = object as? JCListCellViewModel
    }
}
