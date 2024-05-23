//
//  JCListCellViewModel.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/23.
//

import UIKit
import IGListDiffKit

class JCListCellViewModel: NSObject {
    
    var imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
        super.init()
    }
}

extension JCListCellViewModel: ListDiffable {
    func diffIdentifier() -> any NSObjectProtocol {
        return JCIGListUtils.listCellIdentifier as NSString
    }
    
    func isEqual(toDiffableObject object: (any ListDiffable)?) -> Bool {

        guard let object = object as? JCListCellViewModel else {
            return false
        }
        
        if object.imageName != self.imageName {
            return false
        }
        
        return true
    }
}
