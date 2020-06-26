//
//  DogCoordinator.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 26/06/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

import UIKit

class DogCoordinator {
    
    private var navigation: UINavigationController
    
    init(navigation: UINavigationController = UINavigationController()) {
        self.navigation = navigation
    }
    
       func start() -> UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let controller = UserViewController(navigation: navigation)
        window.rootViewController = controller
        return window
    }
}
