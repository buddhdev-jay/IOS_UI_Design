//
//  UserNameTextField.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 01/05/22.
//

import Foundation
import UIKit

class UserNameTextFiled: BaseCustomTextField {
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        userNameTextFiledsetup()
    }
}

// MARK: - TextFiled Setup
extension UserNameTextFiled {
    
    func userNameTextFiledsetup() {
        keyboardType = .asciiCapable
        keyboardAppearance = .light
        super.setUpImage(leftImage:Constants.userProfileIcon)
    }
    
}
