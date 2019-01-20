//
//  CustomLabel.swift
//  UIKitSwiftDSL_Example
//
//  Created by Majid Jabrayilov on 1/20/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKitSwiftDSL

class CustomLabel: UILabel {
    // Custom implementation here
}

extension UIView {
    @discardableResult
    func customLabel(apply closure: (CustomLabel) -> Void) -> CustomLabel {
        return custom(CustomLabel(), apply: closure)
    }
}
