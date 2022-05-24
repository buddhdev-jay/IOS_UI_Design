//
//  PasswordTextField.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 01/05/22.
//

import Foundation
import UIKit

class PasswordTextField : BaseCustomTextField {
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        passwordTextFieldsetup()
    }
}

// MARK: - TextFiled Setup
extension PasswordTextField {
    
    func passwordTextFieldsetup() {
       keyboardType = .asciiCapable
       keyboardAppearance = .light
       isSecureTextEntry = true
       super.setUpImage(leftImage: Constants.passwordIcon,rightImage: Constants.passwordIconInactive)
        super.setUpImage(leftImage: "password_icon")
        setUpButton()
   }
    
}
