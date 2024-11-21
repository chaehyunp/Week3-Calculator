//
//  LayoutSize.swift
//  Week3-Calculator
//
//  Created by CHYUN on 11/18/24.
//

import UIKit

enum LayoutSize {
    
    // button
    static let buttonSize: CGFloat = 80
    static let buttonCornerRadius: CGFloat = 40
    
    // Label
    static let labelHeight: CGFloat = 100
    static let labelTopSpacing: CGFloat = 200
    
    // Font
    static let labelFontSize: CGFloat = 60
    static let buttonFontSize: CGFloat = 30
    
    // Spacing
    static let stackWidth: CGFloat = 350
    static let stackSpacing:CGFloat = 10
    static let stackSpacingWithLabel: CGFloat = 60
    static let horizontalPadding: CGFloat = 30
    
}

extension UIColor {
    static let calculatorNumberButton = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
    static let calculatorOperatorButton: UIColor = .orange
}
