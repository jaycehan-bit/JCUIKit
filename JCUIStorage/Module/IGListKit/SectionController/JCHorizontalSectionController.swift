//
//  JCHorizontalSectionController.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/23.
//

import UIKit
import IGListKit

final class JCHorizontalSectionController: ListSectionController {
    
    private var object: JCHorizontalCellViewModel?
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell: JCHorizontalCollectionViewCell = collectionContext!.dequeueReusableCell(of: JCHorizontalCollectionViewCell.self, for: self, at: index) as! JCHorizontalCollectionViewCell
        cell.bindViewModel(viewModel: object!)
        return cell
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        guard collectionContext != nil else {
            return .zero
        }
        let containerSize: CGSize = collectionContext!.containerSize
        return CGSize(width: containerSize.width, height: JCIGListUtils.horizontalHeight)
    }
    
    override func didUpdate(to object: Any) {
        self.object = object as? JCHorizontalCellViewModel
    }
}
