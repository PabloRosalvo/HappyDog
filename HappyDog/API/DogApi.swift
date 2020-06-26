//
//  DogApi.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 25/06/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

protocol DogApiProtocol {
    func fetchDogs(completion: @escaping (Int?, _ details: Dog?) -> Swift.Void)
}

class DogbApi: DogApiProtocol {
    
    enum BaseUrl {
        static let baseUrl = "https://iddog-nrizncxqba-uc.a.run.app"
    }
    
    private let connectionManager: ConnectionManager
    
    init(connectionManager: ConnectionManager = ConnectionManager()) {
        self.connectionManager = connectionManager
    }
    
    func fetchDogs(completion: @escaping (Int?, _ details: Dog?) -> Swift.Void)  {
        connectionManager.request(url:  BaseUrl.baseUrl, method: .get, parameters: nil, headers: nil) { (statusCode, dog: Dog?) in
        }
    }

}
