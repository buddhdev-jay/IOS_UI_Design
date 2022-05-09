//
//  WelcomeUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 03/05/22.
//

import Foundation
import UIKit

class WelcomeUILabel : UILabel {
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        self.text = R.string.localizable.welcomeBackTagLine()
        self.font = R.font.poppinsSemiBold(size: CGFloat(Constants.TWENTYFOUR))
    }
    
}
