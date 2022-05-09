//
//  RegisterTagLineUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 02/05/22.
//

import Foundation
import UIKit

class RegisterTagLineUILabel : UILabel {
    
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
        self.text = R.string.localizable.registrationTagLine()
        self.font =  R.font.poppinsRegular(size: CGFloat(Constants.TWENTYFOUR))
        self.textColor = UIColor.gray
    }
}
