//
//  JobDateUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import Foundation
import UIKit

@IBDesignable
class JobDateUILabel : BaseCustomUILabel {
    
    @IBInspectable var jobDateLabel: String = "" {
            didSet {
                JobDateUILabel()
            }
        }
    
    
}

// MARK: - Intial Setup
extension JobDateUILabel {
    
    func JobDateUILabel() {
        self.font = R.font.poppinsRegular(size: CGFloat(Constants.THIRTEEN))
        self.textColor = UIColor.gray
        self.text = jobDateLabel
    }
}
