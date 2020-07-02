//
//  UIFont+Extensions.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 02/07/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

import UIKit

extension UIFont {
    static public func regular(ofSize: CGFloat) -> UIFont {
        return self.systemFont(ofSize: ofSize, weight: .regular)
    }
    
    static public func bold(ofSize: CGFloat) -> UIFont {
        return self.systemFont(ofSize: ofSize, weight: .bold)
    }
}
