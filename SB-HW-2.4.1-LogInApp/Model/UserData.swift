//
//  File.swift
//  SB-HW-2.4.1-LogInApp
//
//  Created by Sergey Nestroyniy on 06.09.2022.
//

struct UserData {
    var userName = "user" {
        didSet {
            userName = userName.lowercased()
        }
    }
    var password = "Password"
}

var currentUser = UserData()
