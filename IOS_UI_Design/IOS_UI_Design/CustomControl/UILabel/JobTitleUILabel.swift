//
//  JobTitleUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import Foundation
import UIKit

class JobTitleUILabel : BaseCustomUILabel {
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        JobTitleUILabel()
    }
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        JobTitleUILabel()
    }
    
    func JobTitleUILabel() {
        self.font = UIFont.init(name: "Poppins-SemiBold", size: CGFloat(Constants.FOURTEEN))
        self.textColor = UIColor.black
    }
}
