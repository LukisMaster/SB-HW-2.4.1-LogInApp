//
//  Background Gradient.swift
//  SB-HW-2.4.1-LogInApp
//
//  Created by Sergey Nestroyniy on 08.09.2022.
//

import UIKit

struct BackgroundColor {
    static var firstColor = UIColor(red: 60/255, green: 40/255, blue: 33/255, alpha: 1).cgColor
    static var secondColor = UIColor(red: 20/255, green: 10/255, blue: 20/255, alpha: 1).cgColor
    static func setBackgroundColor (viewBounds: CGRect) -> CALayer {
        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = viewBounds
                gradientLayer.colors = [firstColor, secondColor]
                gradientLayer.shouldRasterize = true
                return gradientLayer
    }
}

let labelsColor = UIColor.white
