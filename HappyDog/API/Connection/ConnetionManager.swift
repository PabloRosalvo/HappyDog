
import Foundation
import Alamofire


extension Request {
    public func debugLog() -> Self {
        #if DEBUG
            debugPrint("=======================================")
            debugPrint(self)
            debugPrint("=======================================")
        #endif
        return self
    }
}

class ConnectionManager {
    func request<T: Decodable>(url: URLConvertible, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders?, encoding: ParameterEncoding, completionHandler: @escaping (Int, T?) -> ()) {
        
        Alamofire.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers)
            .debugLog()
            .responseJSON { response  in
            var statusCode: Int = Int()
            
            statusCode = response.response?.statusCode ?? -1
                        
            let error = response.result.isFailure
                
            if error {
                print(error)
            }
            
            if let error = response.result.error as? AFError {
                print(error)
            }
            
            print(response)
            
            switch response.result {
            case .success(let response) :
                let decoder = JSONDecoder()
                do {
                    let jsonData = try! JSONSerialization.data(withJSONObject: response, options: .fragmentsAllowed)
                    let data = try decoder.decode(T.self, from: jsonData)
                    completionHandler(statusCode, data)
                } catch let error {
                    print(error)
                }
            case .failure(_):
                completionHandler(statusCode, nil)
            }
        }
    }
    
}


