//
//  OnBoardingHeadingUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 09/05/22.
//

import Foundation
import UIKit

class OnBoardingheadingUILabel : BaseCustomUILabel {
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        OnBoardingHeadingSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        OnBoardingHeadingSetup()
    }
    
    @IBInspectable var textSize: CGFloat = CGFloat(Constants.TWENTYFOUR) {
        didSet {
            OnBoardingHeadingSetup()
        }
    }
    
}

// MARK: - Intial Setup
extension OnBoardingheadingUILabel {
    
    func OnBoardingHeadingSetup() {
        self.textColor = UIColor(named: "#0D0D26")
        self.font = R.font.poppinsSemiBold(size: textSize)
    }
}
