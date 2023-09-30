//
//  File.swift
//  
//
//  Created by MaxAir on 29/09/2023.
//

import UIKit

enum UIViewDSLHelper {
 
    static func involvesOwnerView(_ owner: UIView, in constraint: NSLayoutConstraint) -> Bool {
        (constraint.firstItem as? UIView) == owner || (constraint.secondItem as? UIView) == owner
    }

    static func addSubviews(_ subviews: [UIView], to target: UIView) {
        let adderFunction: (UIView) -> Void
        
        if let stackView = target as? UIStackView {
            adderFunction = stackView.addArrangedSubview(_:)
        } else {
            adderFunction = target.addSubview(_:)
        }
        
        subviews.forEach(adderFunction)
    }
}
