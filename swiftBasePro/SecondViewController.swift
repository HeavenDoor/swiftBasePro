//
//  SecondViewController.swift
//  swiftBasePro
//
//  Created by shenghai on 2017/3/28.
//  Copyright © 2017年 shenghai. All rights reserved.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var tableView:UITableView!
    var tableData = NSMutableArray();
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView.init();
        view.addSubview(tableView);
        tableView.snp.makeConstraints { (make) in
            make.left.right.bottom.top.equalTo(view);
        }
        tableData = ["AAA", "BBB", "CCC", "DDD", "EEE"];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = UITableViewCell.init(style: .default, reuseIdentifier: "SecondViewControllerCell");
        tableCell.textLabel!.text = tableData.object(at: indexPath.row) as? String
        return tableCell;
    }

}
