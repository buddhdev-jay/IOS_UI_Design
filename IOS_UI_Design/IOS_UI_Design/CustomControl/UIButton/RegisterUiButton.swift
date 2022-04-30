//
//  RegisterUiButton.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 30/04/22.
//

import Foundation
import UIKit

class RegisterUiButton:BaseCustomUIButton {
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        registerUiButton()
    }
}

// MARK: - Button Setup
extension RegisterUiButton {
    
    func registerUiButton() {
        self.setTitle(Constants.register, for: .normal)
        self.titleLabel?.font =  UIFont(name:Fonts.poppinsBold.rawValue,size: CGFloat(Constants.SIXTEEN))
        self.setTitleColor(.whiteColor, for: .normal)
    }
    
}
