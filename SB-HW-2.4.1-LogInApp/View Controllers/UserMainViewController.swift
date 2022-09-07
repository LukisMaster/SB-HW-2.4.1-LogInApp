//
//  UserMainViewController.swift
//  SB-HW-2.4.1-LogInApp
//
//  Created by Sergey Nestroyniy on 07.09.2022.
//

import UIKit

class UserMainViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var logutButton: UIButton!
    
    @IBOutlet var mainTab: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.textColor = labelsColor
        titleLabel.textColor = labelsColor
        makeGradientBackGround()
    }
    
    // MARK: BackGround

    func makeGradientBackGround() {
        let gradientLayer = BackgroundColor.setBackgroundColor(viewBounds: view.bounds)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        welcomeLabel.text = "Welcome, \(currentUser.userName.capitalized)"

    }

}
