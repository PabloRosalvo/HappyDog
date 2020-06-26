//
//  UserViewController.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 26/06/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

import UIKit

final class UserViewController: UIViewController {
    
    let navigation: UINavigationController
    let dogbApi = DogbApi()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        dogbApi.fetchUserToken { statusCode, user  in
            
        }
    }
 
    init(navigation: UINavigationController) {
        self.navigation = navigation
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
