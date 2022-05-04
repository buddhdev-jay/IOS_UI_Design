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
        setupRegistrationUILabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupRegistrationUILabel()
    }
    
    func setupRegistrationUILabel(){
        self.text = "Registration👍"
        self.font = UIFont.init(name: "Poppins-SemiBold", size: CGFloat(Constants.TWENTYFOUR))
    }
}
