//
//  ViewController.swift
//  SOLIDPrincipleDemo
//
//  Created by Ram Naidu on 29/07/21.
//

import UIKit
import Foundation

class Handler {
    
    func handle() {
        let data = requestDataToAPI()
        let array = parse(data: data)
        saveToDatabase(array: array)
    }
  
    private func requestDataToAPI() -> Data {
        // Network request and wait the response
    }
    
    private func parseResponse(data: Data) -> [String] {
        // Parse the network response into array
    }
   
    private func saveToDatabase(array: [String]) {
        // Save parsed response into database
    }
}

class Handler {
    let apiHandler: APIHandler
    let parseHandler: ParseHandler
    let databaseHandler: DBHandler
    init(apiHandler: APIHandler, parseHandler: ParseHandler, dbHandler: DBHandler) {
        self.apiHandler = apiHandler
        self.parseHandler = parseHandler
        self.dbHandler = dbHandler
    }
    func handle() {
        let data = apiHandler.requestDataToAPI()
        let array = parseHandler.parse(data: data)
        databaseHandler.saveToDatabase(array)
    }
}
class NetworkHandler {
    func requestDataToAPI() -> Data {
        // Network request and wait the response
    }
}
class ResponseHandler {
    func parseResponse(data: Data) -> [String] {
        // Parse the network response into array
    }
}
class DatabaseHandler {
    func saveToDatabase(array: [String]) {
        // Save parsed response into database
    }
}


class SingleResponsbilityPrinciple: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

