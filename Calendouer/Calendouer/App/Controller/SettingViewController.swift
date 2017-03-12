//
//  SettingViewController.swift
//  Calendouer
//
//  Created by 段昊宇 on 2017/3/6.
//  Copyright © 2017年 Desgard_Duan. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    var tableView: UITableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        initialView()
        addViews()
    }
    
    private func initialView() {
        view.backgroundColor = DouBackGray
        
        tableView = UITableView(frame: view.bounds, style: UITableViewStyle.grouped)
        tableView.backgroundColor = DouBackGray
        tableView.separatorStyle = .none
        tableView.dataSource = self
        tableView.delegate = self
        
        // Table View Register
        tableView.register(UINib(nibName: SwitchSettingTableViewCellId, bundle: nil), forCellReuseIdentifier: SwitchSettingTableViewCellId)
        tableView.register(UINib(nibName: TextSettingTableViewCellId, bundle: nil), forCellReuseIdentifier: TextSettingTableViewCellId)
        tableView.register(UINib(nibName: TitleSettingTableViewCellId, bundle: nil), forCellReuseIdentifier: TitleSettingTableViewCellId)
    }
    
    private func addViews() {
        view.addSubview(tableView)
    }

}

extension SettingViewController: UITableViewDelegate {
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 30
        }
        return 42
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }
}

extension SettingViewController: UITableViewDataSource {
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell = UITableViewCell()
        if indexPath.row == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: TitleSettingTableViewCellId, for: indexPath) as! TitleSettingTableViewCell
            cell.selectionStyle = .none
        } else if indexPath.row == 1 {
            cell = tableView.dequeueReusableCell(withIdentifier: SwitchSettingTableViewCellId, for: indexPath) as! SwitchSettingTableViewCell
            cell.selectionStyle = .none
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: TextSettingTableViewCellId, for: indexPath) as! TextSettingTableViewCell
            
        }
        
        
        return cell
    }
}