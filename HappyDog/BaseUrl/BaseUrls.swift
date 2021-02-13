//
//  BaseUrls.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 25/06/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

import Foundation

public class BaseUrls {
    
    public static var happyDogs: URL? {
        guard let url = URL(string: "https://iddog-nrizncxqba-uc.a.run.app") else { return nil }
        return url
    }

}
