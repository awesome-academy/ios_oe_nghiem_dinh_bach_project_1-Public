//
//  UIView.swift
//  MovieApp
//
//  Created by Bach Nghiem on 19/09/2023.
//

import UIKit
import Foundation

extension UIView {
    func addGradient(colors: [UIColor], startPoint: CGPoint, endPoint: CGPoint) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
