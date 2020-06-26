//
//  AppDelegate.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 25/06/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var coordinator: DogCoordinator!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.coordinator = DogCoordinator()
        self.window = coordinator.start()
        self.window?.makeKeyAndVisible()
        return true
    }
    
}


