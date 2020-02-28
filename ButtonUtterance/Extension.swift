//
//  Extension.swift
//  ButtonUtterance
//
//  Created by Daniel Hjärtström on 2020-02-27.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

extension UIStackView {
    func contentHeight() -> CGFloat {
        var totalHeight: CGFloat = 0
        subviews.forEach {
            totalHeight += $0.frame.height + spacing
        }
        return totalHeight
    }
}

extension AccessibilityViewController {
    func recalculateLayoutOnTraitChange() {
        if let elements = elements as? [UIView] {
            elements.forEach { $0.sizeToFit() }
        }
        view.layoutIfNeeded()
    }
}
