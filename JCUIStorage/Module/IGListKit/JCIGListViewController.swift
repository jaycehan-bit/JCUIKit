//
//  JCIGListViewController.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/20.
//

import UIKit
import IGListKit

class JCIGListViewController: JCBaseViewController {
    
    lazy var collectionView: UICollectionView = {
        let collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        return collection
    }()
    
    lazy var adapterUpdater: ListAdapterUpdater = {
        return ListAdapterUpdater()
    }()
    
    lazy var adapter: ListAdapter = {
        let adapter = ListAdapter(updater: self.adapterUpdater, viewController: self)
        adapter.dataSource = self
        adapter.delegate = self
        return adapter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        adapter.collectionView = collectionView
        adapter.viewController = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }

}

extension JCIGListViewController: ListAdapterDataSource {
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        if object is JCVerticalCellViewModel {
          return JCListSectionController()
        } else if object is JCHorizontalCellViewModel {
          return JCHorizontalSectionController()
        } else {
            return JCListSectionController()
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    
    func objects(for listAdapter: ListAdapter) -> [any ListDiffable] {
        return []
    }

}

extension JCIGListViewController: ListAdapterDelegate {
    func listAdapter(_ listAdapter: ListAdapter, willDisplay object: Any, at index: Int) {
        
    }
    
    func listAdapter(_ listAdapter: ListAdapter, didEndDisplaying object: Any, at index: Int) {
        
    }
}
