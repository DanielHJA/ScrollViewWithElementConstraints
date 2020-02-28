//
//  ViewController.swift
//  ButtonUtterance
//
//  Created by Daniel Hjärtström on 2020-02-26.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: AccessibilityViewController, UIScrollViewAccessibilityDelegate {
    
    override var elements: [Any] {
        return [
           button3,
           button4,
           button5,
           button6,
           label
        ]
    }
    
    private lazy var scrollView: UIScrollView = {
        let temp = UIScrollView()
        temp.delegate = self
        temp.isPagingEnabled = true
        view.addSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        temp.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        temp.topAnchor.constraint(equalTo: view.topAnchor, constant: 100.0).isActive = true
        temp.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50.0).isActive = true
        return temp
    }()
    
    private lazy var stackView: UIStackView = {
        let temp = UIStackView()
        temp.axis = .vertical
        temp.alignment = .center
        temp.spacing = 20.0
        temp.distribution = .equalSpacing
        scrollView.addSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        temp.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        return temp
    }()
    
    private lazy var button: TouchButton = {
        let temp = TouchButton()
        temp.setTitle("Set value", for: .normal)
        temp.layer.cornerRadius = 5.0
        temp.setTitleColor(UIColor.white, for: .normal)
        temp.backgroundColor = UIColor.blue
        temp.accessibilityTraits = .button
        temp.accessibilityLabel = "Button1"
        temp.accessibilityValue = "Knapp ett"
        temp.accessibilityHint = "Tryck aktiverar knapp ett"
        view.addSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        temp.heightAnchor.constraint(equalToConstant: 130.0).isActive = true
        temp.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        temp.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        return temp
    }()
    
    private lazy var button2: TouchButton = {
        let temp = TouchButton()
        temp.setTitle("Set value", for: .normal)
        temp.layer.cornerRadius = 5.0
        temp.setTitleColor(UIColor.white, for: .normal)
        temp.backgroundColor = UIColor.blue
        temp.accessibilityTraits = .button
        temp.accessibilityLabel = "Button2"
        temp.accessibilityValue = "Knapp två"
        temp.accessibilityHint = "Tryck aktiverar knapp två"
        view.addSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        temp.heightAnchor.constraint(equalToConstant: 130.0).isActive = true
        temp.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20.0).isActive = true
        temp.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        return temp
    }()
    
    private lazy var button3: AccessibilityButton = {
        let temp = AccessibilityButton()
        temp.setTitle("Set value", for: .normal)
        temp.setTitleColor(UIColor.white, for: .normal)
        temp.backgroundColor = UIColor.blue
        temp.accessibilityLabel = "Button2"
        temp.accessibilityValue = "Knapp två"
        temp.accessibilityHint = "Tryck aktiverar knapp två"
        stackView.addArrangedSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.8).isActive = true
        temp.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
        return temp
    }()
    
    private lazy var button4: AccessibilityButton = {
        let temp = AccessibilityButton()
        temp.setTitle("Set value", for: .normal)
        temp.setTitleColor(UIColor.white, for: .normal)
        temp.backgroundColor = UIColor.blue
        temp.accessibilityLabel = "Button2"
        temp.accessibilityValue = "Knapp två"
        temp.accessibilityHint = "Tryck aktiverar knapp två"
        stackView.addArrangedSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.8).isActive = true
        temp.heightAnchor.constraint(equalToConstant: 130.0).isActive = true
        return temp
    }()
    
    private lazy var button5: AccessibilityButton = {
        let temp = AccessibilityButton()
        temp.setTitle("Something", for: .normal)
        temp.setTitleColor(UIColor.white, for: .normal)
        temp.backgroundColor = UIColor.blue
        temp.accessibilityLabel = "Button2"
        temp.accessibilityValue = "Knapp två"
        temp.accessibilityHint = "Tryck aktiverar knapp två"
        stackView.addArrangedSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.8).isActive = true
        temp.heightAnchor.constraint(equalToConstant: 130.0).isActive = true
        return temp
    }()
    
    private lazy var button6: AccessibilityButton = {
        let temp = AccessibilityButton()
        temp.setTitle("Set value", for: .normal)
        temp.setTitleColor(UIColor.white, for: .normal)
        temp.backgroundColor = UIColor.blue
        temp.accessibilityLabel = "Button2"
        temp.accessibilityValue = "Knapp två"
        temp.accessibilityHint = "Tryck aktiverar knapp två"
        stackView.addArrangedSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.8).isActive = true
        temp.heightAnchor.constraint(equalToConstant: 130.0).isActive = true
        return temp
    }()
    
    private lazy var label: UILabel = {
        let temp = UILabel()
        temp.text = "Lorem ipsum dolor sit amet isit dolum. Lorem ipsum dolor sit amet isit dolum a. Lorem ipsum dolor sit amet isit dolum a. Lorem ipsum dolor sit amet isit dolum a. Lorem ipsum dolor sit amet isit dolum a. Lorem ipsum dolor sit amet isit dolum a. Lorem ipsum dolor sit amet isit dolum a. Lorem ipsum dolor sit amet isit dolum a. Lorem ipsum dolor sit amet isit dolum a"
        temp.numberOfLines = 0
        temp.textColor = UIColor.black
        temp.adjustsFontForContentSizeCategory = true
        temp.textAlignment = .left
        temp.font = UIFont.preferredFont(forTextStyle: .body)
        stackView.addArrangedSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.8).isActive = true
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        //        button.isHidden = false
        //        button2.isHidden = false
        button3.isHidden = false
        button4.isHidden = false
        button5.isHidden = false
        button6.isHidden = false
        label.isHidden = false
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        reCalculateContentSize()
    }
    
    private func reCalculateContentSize() {
        scrollView.contentSize = CGSize(width: view.frame.width, height: stackView.contentHeight())
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        recalculateLayoutOnTraitChange()
    }
    
    var isScrollingUp = false
    
    override func accessibilityScroll(_ direction: UIAccessibilityScrollDirection) -> Bool {
        switch direction {
        case .up:
            if scrollView.contentOffset.y > 0 {
                scrollView.contentOffset.y -= CGFloat(100.0)
            }
            break
        case .down:
            var height = CGFloat(scrollView.contentSize.height - view.frame.height / 2)
            if scrollView.contentOffset.y < height {
                scrollView.contentOffset.y += CGFloat(100.0)
            }
            
            break
        default:
            return false
        }
        
        return true
    }
    
}

