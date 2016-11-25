//
//  User.swift
//  C00_objectCcallswift
//
//  Created by ucom Apple 13 on 2016/11/25.
//  Copyright © 2016年 GinaY. All rights reserved.
//

import Foundation

@objc class User:NSObject{
    var name:String = ""
    var age :Int = 23
    
    func showInfo() -> () {
    
        print("\(name) is \(age) years old")
    }
    
}

