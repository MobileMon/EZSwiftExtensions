//
//  UIAlertControllerExtensions.swift
//  EZSwiftExtensions
//
//  Created by Lucas Farah on 23/02/16.
//  Copyright (c) 2016 Lucas Farah. All rights reserved.
//

#if os(iOS) || os(tvOS)

import UIKit

extension UIAlertController {
    /// EZSE: Easy way to present UIAlertController
    public func show() {
        let application = UIApplication.value(forKeyPath: #keyPath(UIApplication.shared)) as! UIApplication
        application.keyWindow?.rootViewController?.present(self, animated: true, completion: nil)
    }
}

#endif
