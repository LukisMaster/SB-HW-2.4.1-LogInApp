//
//  UserSettingsViewController.swift
//  SB-HW-2.4.1-LogInApp
//
//  Created by Sergey Nestroyniy on 07.09.2022.
//

import UIKit

class UserSettingsViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var passwordLabel: UILabel!
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextFields()
        
        userNameLabel.textColor = labelsColor
        passwordLabel.textColor = labelsColor
        titleLabel.textColor = labelsColor
        makeGradientBackGround()
    }
    
    // MARK: BackGround

    func makeGradientBackGround() {
        let gradientLayer = BackgroundColor.setBackgroundColor(viewBounds: view.bounds)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func setTextFields () {
        userNameTextField.text = currentUser.userName
        passwordTextField.text = currentUser.password
    }

    @IBAction func updateButtonAction() {
        currentUser.userName = userNameTextField.text?.lowercased() ?? "user"
        currentUser.password = passwordTextField.text ?? "Password"
        
        
    }
    
    @IBAction func resetButtonAction() {
        setTextFields()
    }
    
}
