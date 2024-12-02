//
//  Interface Segregation Principle .swift
//  SOLIDPrincipleDemo
//
//  Created by Ram Naidu on 29/07/21.
//

import Foundation
import UIKit


//We start with the protocol GestureProtocol with a method didTap:protocol


//After some time, you have to add more gestures to the protocol
protocol GestureProtocol {
    func didTap()
    func didDoubleTap()
    func didLongPress()
}

class SuperButton: GestureProtocol {
    func didTap() {
        // Single tap operation
    }
    func didDoubleTap() {
        // double tap operation
    }
    func didLongPress() {
        // long press operation
    }
}

GestureProtocol {
    func didTap()
}

//But if implement Double Tab Button it implement all the action
class DoubleTapButton: GestureProtocol {
    func didTap() {
        // Single tap operation
    }
    func didDoubleTap() {
        // double tap operation
    }
    func didLongPress() {
        // long press operation
    }
}

protocol TapProtocol {
    func didTap()
}
protocol DoubleTapProtocol {
    func didDoubleTap()
}
protocol LongPressProtocol {
    func didLongPress()
}
class SuperButton: TapProtocol, DoubleTapProtocol, LongPressProtocol {
    func didTap() {
        // Single tap operation
    }
func didDoubleTap() {
        // double tap operation
    }
func didLongPress() {
        // long press operation
    }
}
class DoubleTapButton: DoubleTapProtocol {
    func didDoubleTap() {
        // double tap operation
    }
}
