/*******************************************************************************
 # File        : TabbarController.swift
 # Project     : swiftBasePro
 # Author      : shenghai
 # Created     : 2018/8/24
 # Corporation : 成都
 # Description :
 
 -------------------------------------------------------------------------------
 # Date        :
 # Author      :
 # Notes       :
 
 ******************************************************************************/

import UIKit
import RTRootNavigationController

class TabbarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var vcs: [UIViewController] = [
            HomeViewController(),
            MessageViewController(),
            UIViewController(),
            UIViewController()
        ]
        
        
        let titles = ["首页", "消息", "数据", "我的"]
        let defaultImgs = ["home_normal", "msg_normal", "data_normal", "mine_normal"]
        let selectedImgs = ["home_selected", "msg_selected", "data_selected", "mine_selected"]
        vcs = vcs.map({ (vc) -> RTRootNavigationController in
            return RTRootNavigationController(rootViewController: vc)
        })
        for (index, vc) in vcs.enumerated() {
            let item = UITabBarItem(title: titles[index],
                                    image: UIImage(named: defaultImgs[index])?.withRenderingMode(.alwaysOriginal),
                                    selectedImage: UIImage(named: selectedImgs[index])?.withRenderingMode(.alwaysOriginal))
            vc.tabBarItem = item
        }
        self.setViewControllers(vcs, animated: false)
        self.tabBar.backgroundColor = UIColor.white
        self.delegate = self
    }
    
    // MARK: - UITabBarControllerDelegate
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        return true
    }

}

