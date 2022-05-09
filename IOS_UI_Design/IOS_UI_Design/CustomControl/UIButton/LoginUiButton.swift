//
//  LoginUiButton.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 03/05/22.
//

import Foundation
import UIKit

class LoginUiButton : BaseCustomUIButton {
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUiButton()
    }
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUiButton()
    }
    
    override func setupUiButton() {
        super.setupUiButton()
        self.setTitle(R.string.localizable.logIn(), for: .normal)
        self.titleLabel?.font =  R.font.poppinsRegular(size: CGFloat(Constants.SIXTEEN))
        self.setTitleColor(.whiteColor, for: .normal)
    }
}
