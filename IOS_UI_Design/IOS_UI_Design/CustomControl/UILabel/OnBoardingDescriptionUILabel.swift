//
//  OnBoardingDescriptionUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 09/05/22.
//

import Foundation
import UIKit

class OnBoardingDescriptionUILabel : BaseCustomUILabel {

    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        OnBoardingDescriptionSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        OnBoardingDescriptionSetup()
    }
    
    @IBInspectable var textSize: CGFloat = CGFloat(Constants.FOURTEEN) {
        didSet {
            OnBoardingDescriptionSetup()
        }
    }
    
}

// MARK: - Intial Setup
extension OnBoardingDescriptionUILabel {
    func OnBoardingDescriptionSetup(){
        textColor = UIColor(named: "#95969D")
        self.font = R.font.poppinsRegular(size: textSize)
    }
}
