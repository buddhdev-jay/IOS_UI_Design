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
    
    func JobDateUILabel() {
        self.font = UIFont.init(name: "PoppinsRegular", size: 13)
        self.textColor = UIColor.gray
        self.text = jobDateLabel
    }
}
