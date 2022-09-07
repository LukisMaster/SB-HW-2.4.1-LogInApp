//
//  ViewController.swift
//  SB-HW-2.4.1-LogInApp
//
//  Created by Sergey Nestroyniy on 06.09.2022.
//

import UIKit

class loginViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = currentUser
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.textColor = labelsColor
        makeGradientBackGround()
    }
    
    // MARK: BackGround

    func makeGradientBackGround() {
        let gradientLayer = BackgroundColor.setBackgroundColor(viewBounds: view.bounds)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    // MARK: Actions
    
    @IBAction func loginButtonPressed() {
        if userNameTextField.text!.lowercased() == currentUser.userName && passwordTextField.text == currentUser.password {
            performSegue(withIdentifier: "loginSegueIdentifier", sender: nil)
        } else {
            viewAlert(Alert.invalidLoginAlert)
        }
    }

    @IBAction func showForgotAlerts(_ sender: UIButton) {
        switch sender.tag {
        case 1: viewAlert(Alert.forgotUserNameAlert)
        case 2: viewAlert(Alert.forgotPasswordAlert)
        default: fatalError()
        }
    }
    

    @IBAction func unwindToLoginView (_ sender: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
}

// MARK: Alert
extension loginViewController {
    
    func viewAlert(_ alert: Alert) {
        let alertController = UIAlertController(title: alert.title, message: alert.message, preferredStyle: .alert)
        alertController.addAction(Alert.getOkButton())
        present(alertController, animated: true)
    }

}

// MARK: Text Field Delegate
extension loginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginButtonPressed()
        }
        return true
    }
}


    

