//
//  NextUIButton.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import Foundation
import UIKit

class NextUIButton : BaseCustomUIButton {
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUiButton()
    }
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUiButton()
    }
    
    override func setupUiButton() {
        super.setupUiButton()
        self.setTitle(R.string.localizable.next(), for: .normal)
        self.titleLabel?.font =  UIFont(name:"PoppinsRegular",size: 16)
        self.setTitleColor(.whiteColor, for: .normal)
    }

}
