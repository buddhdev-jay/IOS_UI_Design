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
    }
}
