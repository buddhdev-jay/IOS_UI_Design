//
//  LoginUiButton.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 03/05/22.
//

import Foundation
import UIKit

class LoginUiButton : BaseCustomUIButton {
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        LoginUiButton()
    }
    
    func LoginUiButton() {
        self.setTitle(Constants.logIn, for: .normal)
        self.titleLabel?.font =  UIFont(name:Constants.poppinsRegular,size:CGFloat(Constants.SIXTEEN))
        self.setTitleColor(.whiteColor, for: .normal)
    }
}
