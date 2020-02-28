//
//  AccessibilityViewController.swift
//  ButtonUtterance
//
//  Created by Daniel Hjärtström on 2020-02-27.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

class AccessibilityViewController: UIViewController {
    
    var elements: [Any] {
        return []
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureAccessibilityElements()
    }
    
    private func configureAccessibilityElements() {
        accessibilityElements = elements.compactMap { $0 }
    }
    
//    var currentView = UIView()
//
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for view in view.subviews {
//            for touch in touches {
//                if view.point(inside: touch.location(in: self.view), with: event) {
//                    if currentView != view {
//                        currentView = view
//                        if let string = view.accessibilityLabel {
//                            Speech.shared.speak(string)
//                        }
//                    }
//                }
//            }
//        }
//    }

}
