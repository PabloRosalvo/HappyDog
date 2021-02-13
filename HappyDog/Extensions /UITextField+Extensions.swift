//
//  UITextField+Extensions.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 02/07/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

import UIKit

extension UITextField {
    func applyLeftTextPadding() {
        let paddingFrame = CGRect(x: 0, y: 0,
                                  width: 16,
                                  height: frame.height)
        let paddingView = UIView(frame: paddingFrame)
        leftView = paddingView
        leftViewMode = .always
    }
    
    public func setPlaceholder(text: String?) {
        guard let text = text else { return }
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.gray,
            NSAttributedString.Key.font: UIFont.regular(ofSize: 15)
        ]
        placeholder = text
        attributedPlaceholder = NSAttributedString(string: text, attributes: attributes)
    }
}
