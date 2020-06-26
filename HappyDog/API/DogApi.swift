//
//  DogApi.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 25/06/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

import Foundation
import Alamofire

protocol DogApiProtocol {
    func getBaseUrl(_ endPoint: String) -> URL?
    var token: String? { get set}
}

class DogbApi: DogApiProtocol {
    
    var token: String?
        
    private let connectionManager: ConnectionManager
    
    init(connectionManager: ConnectionManager = ConnectionManager()) {
        self.connectionManager = connectionManager
    }

    func getBaseUrl(_ endPoint: String) -> URL? {
        return BaseUrls.happyDogs?.appendingPathComponent(endPoint)
    }

    func fetchUserToken(completion: @escaping (Int?, _ user: User?) -> Swift.Void)  {
        guard let url: URL = getBaseUrl("/signup") else { return }
        
        let headers: HTTPHeaders = [ "Content-Type": "application/json" ]
        let parms: Parameters = [ "email": "pablo.rosalvo2014.2@gmail.com" ]

        connectionManager.request(url: url, method: .post, parameters: parms, headers: headers, encoding: JSONEncoding.default) { statusCode, user in
            
            completion(statusCode, user)
        }
    }

}
