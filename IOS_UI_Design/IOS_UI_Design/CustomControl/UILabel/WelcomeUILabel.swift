//
//  WelcomeUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 03/05/22.
//

import Foundation
import UIKit

class WelcomeUILabel : UILabel {
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        self.text = Constants.welcomeLabel
        self.font = UIFont.init(name: Fonts.poppinsSemiBold.rawValue, size: CGFloat(Constants.TWENTYFOUR))
    }
}
