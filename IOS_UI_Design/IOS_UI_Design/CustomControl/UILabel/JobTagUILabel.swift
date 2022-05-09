//
//  JobTagUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import Foundation
import UIKit

@IBDesignable
class JobTagUILabel : BaseCustomUILabel {
    
    @IBInspectable var jobTagLineName: String = "" {
        didSet {
            JobTagUILabel()
        }
    }
}

// MARK: - Intial Setup
extension JobTagUILabel {
    
    func JobTagUILabel() {
        self.font =   R.font.poppinsRegular(size: CGFloat(Constants.THIRTEEN))
        self.textColor = UIColor.gray
        self.text = jobTagLineName
    }
    
}
