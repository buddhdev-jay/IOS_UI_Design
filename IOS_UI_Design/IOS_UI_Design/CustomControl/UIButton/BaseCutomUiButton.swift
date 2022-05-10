//
//  BaseCutomUiButton.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 30/04/22.
//

import Foundation
import UIKit

class BaseCustomUIButton: UIButton {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUiButton()
    }
}

// MARK: - Button Setup
extension BaseCustomUIButton {
    
    func setupUiButton() {
        self.layer.cornerRadius = CGFloat(Constants.SIXTEEN)
        self.backgroundColor = UIColor.greenColor
        let height = NSLayoutConstraint(item: self, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: CGFloat(Constants.ONE), constant: CGFloat(Constants.FIFTYSIX))
        let width = NSLayoutConstraint(item: self, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: CGFloat(Constants.ONE), constant: CGFloat(Constants.THREETWENTYSEVEN))
        self.addConstraints([height,width])
    }
    
}
