//
//  JobTitleUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import Foundation
import UIKit

@IBDesignable
class JobTitleUILabel : BaseCustomUILabel {
    
    @IBInspectable var jobTitleName: String = "" {
            didSet {
                JobTitleUILabel()
            }
        }
    
    func JobTitleUILabel() {
        self.font = UIFont.init(name: "Poppins-SemiBold", size: CGFloat(Constants.FOURTEEN))
        self.textColor = UIColor.black
        self.text = jobTitleName
    }
}
