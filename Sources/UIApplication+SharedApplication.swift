//
//  UIApplication+SharedApplication.swift
//  EZSwiftExtensions
//
//  Created by Ryan Chesla on 2/28/19.
//  Copyright © 2019 Goktug Yilmaz. All rights reserved.
//

import UIKit

extension UIApplication {
    
    static func safeSharedApplication() -> UIApplication? {
        guard UIApplication.respondsToSelector("sharedApplication") else {
            return nil
        }
        
        guard let unmanagedSharedApplication = UIApplication.performSelector("sharedApplication") else {
            return nil
        }
        
        return unmanagedSharedApplication.takeRetainedValue() as? UIApplication
    }
    
}
