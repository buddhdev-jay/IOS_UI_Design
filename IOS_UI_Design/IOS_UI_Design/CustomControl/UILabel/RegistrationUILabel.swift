//
//  RegistrationUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 02/05/22.
//

import Foundation
import UIKit

class RegistrationUILabel : UILabel {
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    func setup(){
        self.text = "Registration👍"
        self.font = UIFont.init(name: "Poppins-SemiBold", size: 24)
    }
}
