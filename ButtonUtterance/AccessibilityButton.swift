//
//  AccessibilityButton.swift
//  ButtonUtterance
//
//  Created by Daniel Hjärtström on 2020-02-27.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

protocol AccessibilityProtocol {
    func configureLayout()
    func configureTitleLabel()
    func configureAccessibility()
}

class AccessibilityButton: UIButton, AccessibilityProtocol {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLayout()
        configureTitleLabel()
        configureAccessibility()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configureLayout() {
        layer.cornerRadius = 5.0
    }
    
    func configureTitleLabel() {
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
        titleLabel?.adjustsFontForContentSizeCategory = true
    }
    
    func configureAccessibility() {
        accessibilityTraits = .button
    }
    
}
