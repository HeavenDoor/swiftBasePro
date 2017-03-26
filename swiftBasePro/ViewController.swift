//
//  ViewController.swift
//  swiftBasePro
//
//  Created by shenghai on 2016/12/22.
//  Copyright © 2016年 shenghai. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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
        button.addTarget(self, action: #selector(ViewController.ggwp), for: .touchUpInside);
        // Do any additional setup after loading the view, typically from a nib.
        
        let imageView = UIImageView.init(frame: CGRect(x: 10, y: 10, width: 100, height: 200));
        let image = UIImage.init(imageLiteralResourceName: "查看全景图");
        imageView.image = image;
        self.view.addSubview(imageView);
        
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
    
    func ggwp() {
        NSLog("slfkjksdf");
    }

}

