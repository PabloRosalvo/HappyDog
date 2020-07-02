//
//  LoginViewModel.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 01/07/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

import Foundation


class LoginViewModel {
    
    private var user: User?
    let api: DogApiProtocol
    
    init(api: DogApiProtocol = DogbApi()) {
        self.api = api
    }
    
    func fetchTokenUser(completion: @escaping (_ success: Bool) -> Void) {
        api.fetchUserToken { statusCode, user  in
            let result = ConnectionErrorManager.isSuccessfulStatusCode(statusCode: statusCode)
            switch result {
            case .success:
                UserDefaults.standard.set(user?.user?.token, forKey: "token")
                self.user = user
                completion(true)
            case .fail:
                completion(false)
            }
        }
    }
    
}
