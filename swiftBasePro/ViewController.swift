//
//  ViewController.swift
//  swiftBasePro
//
//  Created by shenghai on 2016/12/22.
//  Copyright © 2016年 shenghai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var dbValue = 5.2
        
        var hellStr = self.sayHello("  shenghai", 20, dbResult: &dbValue);
        print(hellStr);
        hellStr = "ni hao"
        // Do any additional setup after loading the view, typically from a nib.
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

}

