//
//  UserNameTextField.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 01/05/22.
//

import Foundation
import UIKit

class UserNameTextFiled: BaseCustomTextField {
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        UserNameTextFiledsetup()
    }
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        UserNameTextFiledsetup()
    }
    
    
}

// MARK: - Intial Setup
extension UserNameTextFiled {
    
    func UserNameTextFiledsetup() {
        keyboardType = .asciiCapable
        keyboardAppearance = .light
        self.attributedPlaceholder = NSAttributedString(string: R.string.localizable.userName(),attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        super.setUpImage(leftImage: R.image.user_profile_icon.name)
    }
    
}
