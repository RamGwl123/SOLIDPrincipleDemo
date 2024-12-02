//
//  Liskov SubstitutionPrinciple.swift
//  SOLIDPrincipleDemo
//
//  Created by Ram Naidu on 29/07/21.
//

import Foundation
import UIKit


let requestKey: String = "NSURLRequestKey"

// NSError subclass provide additional functionality but don't mess with original class.
class RequestError: NSError {
    var request: NSURLRequest? {
        return self.userInfo[requestKey] as? NSURLRequest
    }
}

// I forcefully fail to fetch data and will return RequestError.
func fetchData(request: NSURLRequest) -> (data: NSData?, error: RequestError?) {
    let userInfo: [String:Any] = [requestKey : request]
    return (nil, RequestError(domain:"DOMAIN", code:0, userInfo: userInfo))
}

func willReturnObjectOrError() -> (object: AnyObject?, error: NSError?) {

    let request = NSURLRequest()
    let result = fetchData(request: request)

    return (result.data, result.error)
}

let result = willReturnObjectOrError()

//RequestError
if let requestError = result.error as? RequestError {
    requestError.request
}
