//
//  TouchButton.swift
//  ButtonUtterance
//
//  Created by Daniel Hjärtström on 2020-02-26.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

class TouchButton: UIButton {
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return frame.contains(point)
    }

}
