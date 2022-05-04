//
//  JobLocationUILabel.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import Foundation
import UIKit

class JobLocationUILabel : BaseCustomUILabel {
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        JobLocationUILabel()
    }
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        JobLocationUILabel()
    }
    
    func JobLocationUILabel() {
        self.font = UIFont.init(name: "PoppinsRegular", size: 12)
        self.textColor = UIColor.black
    }
}
