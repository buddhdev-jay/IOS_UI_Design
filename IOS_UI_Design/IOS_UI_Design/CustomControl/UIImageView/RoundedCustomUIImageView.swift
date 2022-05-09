//
//  RoundedCustomUIImageView.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 09/05/22.
//

import Foundation
import UIKit

class RoundedCustomUIImage : BaseCustomUIImageView {
    
    // MARK: - Inspectables
    @IBInspectable var roundedImage: Bool = true {
        didSet {
            self.layer.cornerRadius = self.frame.size.width / 2;
            self.clipsToBounds = true
        }
    }
}
