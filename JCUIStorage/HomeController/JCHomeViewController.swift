//
//  JCHomeViewController.swift
//  JCUIStorage
//
//  Created by jaycehan on 2024/5/20.
//

import UIKit
import IGListKit

class JCHomeViewController: JCBaseViewController {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView.init(frame: CGRect.zero, style: UITableView.Style.grouped)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier:JCHomeControllerConfig.cellIdentifier)
        tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension JCHomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return JCHomeControllerConfig.cellHeight
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let className = JCHomeControllerConfig.JCHomeContrllerList[indexPath.row]
        guard let controllerClass = NSClassFromString(className as! String) else {
            return
        }
        guard let _controllerClass = controllerClass as? UIViewController.Type else {
            return
        }
        let controller = _controllerClass.init(nibName: nil, bundle: nil)
        self.navigationController?.pushViewController(controller , animated: true)
    }
}

extension JCHomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewControllerList.JCHomeContrllerList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: JCHomeControllerConfig.cellIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.clear
        return cell
    }
}
