//
//  RegistrationUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 02/05/22.
//

import Foundation
import UIKit

class RegistrationUILabel : UILabel {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup(){
        self.text = Constants.registerationLabel
        self.font = UIFont.init(name: Fonts.poppinsBold.rawValue, size: CGFloat(Constants.TWENTYFOUR))
    }
}
