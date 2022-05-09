//
//  BaseCutomUiButton.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 30/04/22.
//

import Foundation
import UIKit

class BaseCustomUIButton: UIButton {
    
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
    
    func setupUiButton() {
        self.layer.cornerRadius = CGFloat(Constants.SIXTEEN)
        self.backgroundColor = UIColor.greenColor
    }
    
}
