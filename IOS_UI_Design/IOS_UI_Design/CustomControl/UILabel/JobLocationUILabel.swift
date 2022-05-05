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
    
    func JobLocationUILabel() {
        self.font = UIFont.init(name: "PoppinsRegular", size: 12)
        self.textColor = UIColor.black
        self.text = jobLocationName
    }
}
