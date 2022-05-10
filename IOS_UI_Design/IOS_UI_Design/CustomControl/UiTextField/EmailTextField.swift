//
//  EmailTextField.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 01/05/22.
//

import Foundation
import UIKit

class EmailTextField : BaseCustomTextField {
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        emailTextFieldsetup()
    }
}

// MARK: - TextFiled Setup
extension EmailTextField {
    
    func emailTextFieldsetup() {
        keyboardType = .emailAddress
        keyboardAppearance = .light
        super.setUpImage(leftImage:Constants.mailIcon )
    }
    
}
