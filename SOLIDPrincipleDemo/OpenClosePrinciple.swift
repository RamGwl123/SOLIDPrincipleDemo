//
//  OpenClosePrinciple.swift
//  SOLIDPrincipleDemo
//
//  Created by Ram Naidu on 29/07/21.
//

import Foundation
import UIKit

class Car {
    let name: String
    let color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
   func printDetails() -> String {
        return "I have \(self.color) color \(self.name)."
    }
}
class Logger {
    func printData() {
        let cars = [ Car(name: "BMW", color: "Red"),
                     Car(name: "Audi", color: "Black")]
         cars.forEach { car in
             print(car.printDetails())
         }
     }
}
class Bike {
    let name: String
    let color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    func printDetails() -> String {
        return "I have \(self.name) bike of color \(self.color)."
    }
}
class Loggers {
    func printData() {
        let cars = [ Car(name: "BMW", color: "Red"),
                     Car(name: "Audi", color: "Black")]
         cars.forEach { car in
             print(car.printDetails())
         }
        let bikes = [ Bike(name: "Homda CBR", color: "Black"),
                      Bike(name: "Triumph", color: "White")]
        bikes.forEach { bike in
             print(bike.printDetails())
         }
     }
}

protocol Printable {
    func printDetails() -> String
}
class Cars: Printable {
    let name: String
    let color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    func printDetails() -> String {
        return "I have \(self.color) color \(self.name)."
    }
}
class Bikes: Printable {
    let name: String
    let color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    func printDetails() -> String {
        return "I have \(self.name) bike of color \(self.color)."
    }
}
class Logge {
    func printData() {
        let vehicles: [Printable] = [Car(name: "BMW", color: "Red"),
                                  Car(name: "Audi", color: "Black"),
                            Bike(name: "Honda CBR", color: "Black"),
                              Bike(name: "Triumph", color: "White")]
        vehicles.forEach { vehicle in
            print(vehicle.printDetails())
        }
    }
}
