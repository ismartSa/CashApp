//
//  ViewController.swift
//  CashApp
//
//  Created by iMokhles on 04/01/2018.
//  Copyright © 2018 iMokhles. All rights reserved.
//

import UIKit
import FontAwesomeSwift
import InteractiveSideMenu

class ViewController: UIViewController, SideMenuItemContent {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Home"
        
        FunctionsHelper.sharedManager.addLeftButtonBar(vc: self, icon: .FABars) { (btn) in
            if let navigationViewController = self.navigationController as? SideMenuItemContent {
                navigationViewController.showSideMenu()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func menuBtnTapped() {
        print("Tapped")
        self.showSideMenu()

    }
}

