//
//  Constants.swift
//  homeWork_1
//
//  Created by Андрей Тихонов on 15/03/2019.
//  Copyright © 2019 Марат Нургалиев. All rights reserved.
//

import UIKit

struct Constants {
    struct Colors {
        static let iconColor = UIColor.lightGray
        static let iconSelectedColor = UIColor.red
        static let main = UIColor.init(red: 65/255, green: 107/255, blue: 158/255, alpha: 1)
        static let isMemberBackgroundColor = iconSelectedColor
        
        static let navigationBarTintColor = UIColor.white
        static let segmentedControlForegroundColor = UIColor.lightGray
        static let segmentedControlForegroundSelectedColor = UIColor.white
        static let segmentedControlTintColor = UIColor.clear
        
        static let CustomIndicatorBackgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1)
        
        static let circleBackgroundColor = UIColor.lightGray

        static let activityIndicatorMainViewBackgroundColor = UIColor.clear
        static let activityIndicatorBackgroundColor = UIColor(red: 24/255, green: 139/255, blue: 243/255, alpha: 1)
        static let activityIndicatorStrokeColor = UIColor(red: 238/255, green: 243/255, blue: 251/255, alpha: 1)
        static let activityIndicatorFillColor = UIColor(red: 92/255, green: 175/255, blue: 248/255, alpha: 1)

        static let SearchBarButtonCancelTitleColor = UIColor.white
        static let SearchBarButtonCancelBackgroundColor = UIColor.red
        static let SearchBarIconColor = UIColor.white
        
        static let textFieldColor = UIColor.white
        static let textFieldPlaceholderForegroundColor = UIColor.groupTableViewBackground
    }
    
    struct Fonts {
        static let segmentedControlFont = UIFont(name: "HelveticaNeue", size: 17) ?? UIFont()
        static let segmentedControlSelectFont = UIFont(name: "HelveticaNeue-Medium", size: 17) ?? UIFont()
        static let buttonCancelTitleFont = UIFont.boldSystemFont(ofSize: 16)
    }
}
