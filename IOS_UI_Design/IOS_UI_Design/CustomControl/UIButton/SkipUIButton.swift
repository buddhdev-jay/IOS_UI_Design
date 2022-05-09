//
//  SkipUIButton.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import Foundation
import UIKit

class SkipUIButton : UIButton {
    
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
    
}

// MARK: - Intial Setup
extension SkipUIButton {
    
    func setupUiButton() {
        self.setTitle(R.string.localizable.skip(), for: .normal)
        self.titleLabel?.font =  R.font.poppinsRegular(size: CGFloat(Constants.SIXTEEN))
        self.setTitleColor(.gray, for: .normal)
    }
}
