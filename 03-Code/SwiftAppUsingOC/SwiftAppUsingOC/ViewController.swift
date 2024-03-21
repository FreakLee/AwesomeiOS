//
//  ViewController.swift
//  SwiftAppUsingOC
//
//  Created by min Lee  on 2024/3/20.
//  Copyright © 2024 min Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let obj = OCTest();
        obj.test();
        
        OCTest.test();
        
        obj.ocCallSwift();
    }
}

