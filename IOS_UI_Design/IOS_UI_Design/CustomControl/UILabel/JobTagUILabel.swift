//
//  JobTagUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import Foundation
import UIKit

class JobTagUILabel : BaseCustomUILabel {
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        JobTagUILabel()
    }
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        JobTagUILabel()
    }
    
    func JobTagUILabel() {
        self.font = UIFont.init(name: "PoppinsRegular", size: 13)
        self.textColor = UIColor.gray
    }
}
