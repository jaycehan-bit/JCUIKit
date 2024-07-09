//
//  JCVerticalCellViewModel.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/23.
//

import UIKit
import IGListDiffKit

class JCVerticalCellViewModel: NSObject {
    var imageName: String
    var title: String
    var subtitle: String
    
    init(imageName: String, title: String, subtitle: String) {
        self.imageName = imageName
        self.title = title
        self.subtitle = subtitle
        super.init()
    }
}

extension JCVerticalCellViewModel: ListDiffable {
    func diffIdentifier() -> any NSObjectProtocol {
        return JCIGListUtils.verticalCellIdentifier as NSString
    }
    
    func isEqual(toDiffableObject object: (any ListDiffable)?) -> Bool {

        guard let object = object as? JCVerticalCellViewModel else {
            return false
        }
        
        if object.imageName != self.imageName {
            return false
        }
        
        if object.title != self.title {
            return false
        }
        
        if object.subtitle != self.subtitle {
            return false
        }
        
        return true
    }
}
