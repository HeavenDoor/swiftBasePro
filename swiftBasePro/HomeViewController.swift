//
//  HomeViewController.swift
//  swiftBasePro
//
//  Created by shenghai on 2016/12/22.
//  Copyright © 2016年 shenghai. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true;
        var dbValue = 5.2
        
        var hellStr = self.sayHello("  shenghai", 20, dbResult: &dbValue);
        print(hellStr);
        hellStr = "ni hao"
        
        
        let button = UIButton.init();
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 100);
        button.setTitle("shenghai", for: .normal);
        button.backgroundColor = UIColor.red;
        button.setTitleColor(UIColor.black, for: .normal);
        self.view.addSubview(button);
        button.addTarget(self, action: #selector(self.ggwp), for: UIControlEvents.touchUpInside);
        //button.addTarget(self, action: #selector(ViewController.ggwp), for: .touchUpInside);
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let label = UILabel.init();
        
        label.text = "shenghai";
        label.textColor = UIColor.green;
        self.view.addSubview(label);
        label.snp.makeConstraints { (make) in
            make.left.equalTo(self.view.snp.left).offset(20);
            make.top.equalTo(300);
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func sayHello(_ personName: String, _: Int = 8, dbResult: inout Double) -> String {
        dbResult = 12.5;
        return "hello" + personName;
    }
    
    func sayHello(_ personName: String, _: Int = 8, dbResult: inout Int) -> Int {
        return 5;
    }
    
    @objc func ggwp() {
        NSLog("shenghai btn Clicked");
        let vc = MessageViewController.init();
        self.navigationController?.pushViewController(vc, animated: true);
    }

}

