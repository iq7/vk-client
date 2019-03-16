//
//  Extension.swift
//  homeWork_1
//
//  Created by User on 30.09.2018.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class Session {
    
    static let instance = Session()
    
    private init(){}
    
    var token = ""
    var userId = 0
}


struct GlobalConstants {
    
    static var titles = [String]()

    static let defaults = UserDefaults.standard
    
    static let vkApi = "https://api.vk.com/method/"

}


@IBDesignable extension UIView {
    
    @IBInspectable var shadowColor: UIColor? {
        set {
            layer.shadowColor = newValue!.cgColor
        }
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor:color)
            }
            else {
                return nil
            }
        }
    }
    
    
    @IBInspectable var shadowOpacity: Float {
        set {
            layer.shadowOpacity = newValue
        }
        get {
            return layer.shadowOpacity
        }
    }
    
    
    @IBInspectable var shadowOffset: CGPoint {
        set {
            layer.shadowOffset = CGSize(width: newValue.x, height: newValue.y)
        }
        get {
            return CGPoint(x: layer.shadowOffset.width, y:layer.shadowOffset.height)
        }
    }
    
    
    @IBInspectable var shadowRadius: CGFloat {
        set {
            layer.shadowRadius = newValue
        }
        get {
            return layer.shadowRadius
        }
    }
    
    
    @IBInspectable var borderColor: UIColor? {
        set {
            layer.borderColor = newValue!.cgColor
        }
        get {
            return nil
        }
    }
    
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
}

extension CGFloat {
    func toRadians() -> CGFloat {
        return self * .pi / 180.0
    }
}

extension UIColor {
    static let icon = UIColor.lightGray
    static let iconSelected = UIColor.red
    static let main = UIColor.rgba(65, 107, 158, 1)
    static let isMemberBackground = iconSelected
    
    static let navigationBarTint = UIColor.white
    static let segmentedControlForeground = UIColor.lightGray
    static let segmentedControlForegroundSelected = UIColor.white
    static let segmentedControlTint = UIColor.clear
    
    static let CustomIndicatorBackground = UIColor.rgba(0, 0, 0, 0.1)
    
    static let circleBackground = UIColor.lightGray
    
    static let activityIndicatorMainViewBackground = UIColor.clear
    static let activityIndicatorBackground = UIColor.rgba(24, 139, 243, 1)
    static let activityIndicatorStroke = UIColor.rgba(238, 243, 251, 1)
    static let activityIndicatorFill = UIColor.rgba(92, 175, 248, 1)
    
    static let SearchBarButtonCancelTitle = UIColor.white
    static let SearchBarButtonCancelBackground = UIColor.red
    static let SearchBarIcon = UIColor.white
    
    static let textField = UIColor.white
    static let textFieldPlaceholderForeground = UIColor.groupTableViewBackground

    static var cache: [String: UIColor] = [:]
    
    static func rgba(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        let key = "r\(r)g\(g)b\(b)a\(a)"
        if let cachedColor = self.cache[key] {
            return cachedColor
        }
        let color = UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
        if self.cache.count > 500 {
            self.cache = [:]
        }
        self.cache[key] = color
        return color
    }
}

extension UIFont {
    static let segmentedControl = UIFont(name: "HelveticaNeue", size: 17) ?? UIFont()
    static let segmentedControlSelect = UIFont(name: "HelveticaNeue-Medium", size: 17) ?? UIFont()
    static let buttonCancelTitle = UIFont.boldSystemFont(ofSize: 16)
}
