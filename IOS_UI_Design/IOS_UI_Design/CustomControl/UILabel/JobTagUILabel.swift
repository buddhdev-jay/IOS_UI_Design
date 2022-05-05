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
    
    func JobTagUILabel() {
        self.font = UIFont.init(name: "PoppinsRegular", size: 13)
        self.textColor = UIColor.gray
        self.text = jobTagLineName
    }
}
