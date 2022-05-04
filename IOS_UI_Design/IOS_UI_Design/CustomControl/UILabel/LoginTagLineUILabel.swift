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
    
    func setupLoginTagLineUILabel() {
        self.text = "Let’s log in. Apply to jobs!"
        self.font = UIFont.init(name: "PoppinsRegular", size: CGFloat(Constants.FOURTEEN))
        self.textColor = UIColor.gray
    }
}
