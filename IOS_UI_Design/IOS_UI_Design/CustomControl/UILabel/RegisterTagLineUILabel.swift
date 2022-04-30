//
//  RegisterTagLineUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 02/05/22.
//

import Foundation
import UIKit

class RegisterTagLineUILabel : UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        self.text = Constants.registerHeader
        self.font = UIFont.init(name: Fonts.poppinsRegular.rawValue, size: CGFloat(Constants.FOURTEEN))
        self.textColor = UIColor.black
    }
    
}
