//
//  Window.swift
//  Example
//
//  Created by Wojtek on 23/09/2015.
//  Copyright © 2015 NSHint. All rights reserved.
//

import UIKit

@objc public class Window: UIWindow {
    
    override public var traitCollection: UITraitCollection {
        
        if DeviceType.isIPhone6P {
            return UITraitCollection(traitsFromCollections: [UITraitCollection(horizontalSizeClass: .Compact), UITraitCollection(verticalSizeClass: .Compact)])
        }
        
        return super.traitCollection
    }
}
