//
//  Utils.swift
//  Example
//
//  Created by Wojtek on 23/09/2015.
//  Copyright © 2015 NSHint. All rights reserved.
//

import UIKit

enum UIUserInterfaceIdiom : Int {
    case Unspecified
    case Phone
    case Pad
}

struct ScreenSize {
    static let screenWidth = UIScreen.mainScreen().bounds.size.width
    static let screenHeight = UIScreen.mainScreen().bounds.size.height
    static let screenMaxLength = max(ScreenSize.screenWidth, ScreenSize.screenHeight)
    static let screenMinLength = min(ScreenSize.screenMaxLength, ScreenSize.screenHeight)
}

struct DeviceType {
    static let isIPhone4 =  UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.screenMaxLength < 568.0
    static let isIPhone5 = UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.screenMaxLength == 568.0
    static let isIPhone6 = UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.screenMaxLength == 667.0
    static let isIPhone6P = UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.screenMaxLength == 736.0
}
