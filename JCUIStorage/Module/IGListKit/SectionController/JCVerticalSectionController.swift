//
//  JCVerticalSectionController.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/23.
//

import UIKit
import IGListKit

final class JCVerticalSectionController: ListSectionController {
    
    private var object: JCVerticalCellViewModel?

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell: JCVerticalCollectionViewCell = collectionContext!.dequeueReusableCell(of: JCVerticalCollectionViewCell.self, for: self, at: index) as! JCVerticalCollectionViewCell
        cell.bindViewModel(viewModel: object!)
        return cell
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        guard collectionContext != nil else {
            return .zero
        }
        let containerSize: CGSize = collectionContext!.containerSize
        return CGSize.init(width: containerSize.width, height: JCIGListUtils.verticalHeight)
    }
    
    override func didUpdate(to object: Any) {
        self.object = object as? JCVerticalCellViewModel
    }
}
