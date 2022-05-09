//
//  EmailTextField.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 01/05/22.
//

import Foundation
import UIKit

class EmailTextField : BaseCustomTextField {
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        EmailTextFieldsetup()
    }
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        EmailTextFieldsetup()
    }
    
}

// MARK: - Intial Setup
extension EmailTextField {
    
    func EmailTextFieldsetup() {
        keyboardType = .emailAddress
        keyboardAppearance = .light
        self.attributedPlaceholder = NSAttributedString(string:R.string.localizable.email(),attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        super.setUpImage(leftImage: R.image.mail_icon.name)
    }
    
}
