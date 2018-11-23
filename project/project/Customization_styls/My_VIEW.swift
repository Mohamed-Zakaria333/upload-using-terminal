//
//  Borders.swift
//  Math_test
//
//  Created by m on 7/26/18.
//  Copyright © 2018 WzyoU. All rights reserved.
//

import UIKit
@IBDesignable
class My_VIEW: UIView {
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = .black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}

