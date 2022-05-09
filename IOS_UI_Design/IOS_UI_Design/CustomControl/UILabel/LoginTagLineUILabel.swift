//
//  LoginTagLineUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 03/05/22.
//

import Foundation
import UIKit

class LoginTagLineUILabel : BaseCustomUILabel {
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLoginTagLineUILabel()
    }
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLoginTagLineUILabel()
    }
    
   
}

// MARK: - Intial Setup
extension LoginTagLineUILabel {
    
    func setupLoginTagLineUILabel() {
        self.text = R.string.localizable.logInTagLine()
        self.font = R.font.poppinsRegular(size: CGFloat(Constants.FOURTEEN))
        self.textColor = UIColor.gray
    }
    
}
