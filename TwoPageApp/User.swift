//
//  User.swift
//  TwoPageApp
//
//  Created by joseph on 2/6/19.
//  Copyright © 2019 joseph. All rights reserved.
//

import Foundation

public class User {
    var name: String?
    var email: String?
    var password: String?
    var department: Int!
    
    init() {
        self.name = ""
        self.email = ""
        self.password = ""
        self.department = 0
    }
    
    init(_ name :String,_ email :String,_ password :String,_ department :Int)
    {
        self.name = name
        self.email = email
        self.password = password
        self.department = department
    }
}
