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
        self.text = "Let’s Register. Apply to jobs!"
        self.font = UIFont.init(name: "PoppinsRegular", size: 14)
        self.textColor = UIColor.gray
    }
}
