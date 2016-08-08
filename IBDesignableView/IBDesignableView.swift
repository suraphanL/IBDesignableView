//
//  IBDesignableView.swift
//  IBDesignableView
//
//  Created by Suraphan 'Rawd' Laokondee on 8/8/2559 BE.
//  Copyright © 2559 rawd. All rights reserved.
//

import UIKit

@IBDesignable
class IBDesignableView: UIView {
}

@IBDesignable
class IBDesignableButton: UIButton {
}

@IBDesignable
class IBDesignableImageView: UIImageView {
}

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            if let cgColor = layer.borderColor {
                return UIColor(CGColor: cgColor)
            } else { return .None }
        }
        set {
            layer.borderColor = newValue?.CGColor
        }
    }
}
