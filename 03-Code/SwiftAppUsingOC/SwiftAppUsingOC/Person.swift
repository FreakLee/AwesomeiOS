//
//  SwiftTest.swift
//  SwiftAppUsingOC
//
//  Created by min Lee  on 2024/3/20.
//  Copyright © 2024 min Lee. All rights reserved.
//

import Foundation

// 必须继承 NSObject
class Person: NSObject {
    // 公开给OC的要使用 @objc 修饰
    @objc var name: String
    @objc var age : Int

    @objc init(name: String, age: Int) {
        self.name = name
        self.age = age
        print("Person init--name:\(name)；age=\(age)")
    }
    
    @objc func getInfo() {
        print("self.name：\(self.name),self.age = \(self.age)")
    }
    
    @objc class func classMethod() {
        print("Person classMethod")
    }
    
    @objc static func staticMethod() {
        print("Person staticMethod")
    }
}

