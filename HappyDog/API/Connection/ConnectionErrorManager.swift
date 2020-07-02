//
//  ConnectionErrorManager.swift
//  ProjectSky
//
//  Created by Pablo Rosalvo on 27/06/19.
//  Copyright © 2019 Pablo Rosalvo. All rights reserved.
//

import Foundation
import UIKit

class ConnectionErrorManager {
    
    enum CallBack {
        case success
        case fail
    }
    
    static func isSuccessfulStatusCode(statusCode: Int) -> CallBack {
        if (statusCode >= 200 && statusCode < 300) {
            return .success
        }
        return .fail
    }
    
}
