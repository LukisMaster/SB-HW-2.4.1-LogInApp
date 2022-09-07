//
//  Alert Messages.swift
//  SB-HW-2.4.1-LogInApp
//
//  Created by Sergey Nestroyniy on 07.09.2022.
//

import UIKit

struct Alert {
    let title : String
    let message : String
    
    static var forgotUserNameAlert: Alert {
        Alert(title: "Oops!", message: "Your User name: \n\(currentUser.userName)\n🫡")
    }
    static var forgotPasswordAlert : Alert {
        Alert(title: "Oops!", message: "Your Password: \n\(currentUser.password)\n🫡")
    }
    static let invalidLoginAlert = Alert(title: "Invalid username or password.", message: "Please, enter the correct username and password")
    
    static let getOkButton = {
        UIAlertAction(title: "Ok", style: .default)
    }
}

