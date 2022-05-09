//
//  JobLocationUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import Foundation
import UIKit

@IBDesignable
class JobLocationUILabel : BaseCustomUILabel {
    
    @IBInspectable var jobLocationName: String = "" {
        didSet {
            JobLocationUILabel()
        }
    }
}

// MARK: - Intial Setup
extension JobLocationUILabel {
    
    func JobLocationUILabel() {
        self.font =  R.font.poppinsRegular(size: CGFloat(Constants.TWEVLE))
        self.textColor = UIColor.black
        self.text = jobLocationName
    }
    
}
