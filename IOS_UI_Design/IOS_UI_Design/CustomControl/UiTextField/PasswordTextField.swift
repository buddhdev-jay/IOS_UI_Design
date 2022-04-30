//
//  PasswordTextField.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 01/05/22.
//

import Foundation
import UIKit

class PasswordTextField : BaseCustomTextField {
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        PasswordTextFieldsetup()
    }
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        PasswordTextFieldsetup()
    }
    
    func PasswordTextFieldsetup() {
        keyboardType = .asciiCapable
        keyboardAppearance = .light
        isSecureTextEntry = true
        self.attributedPlaceholder = NSAttributedString(string: "Password",attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        super.setUpImage(leftImage: "password_icon")
        setUpButton()
    }
}
