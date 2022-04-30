//
//  ViewController+extension.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 02/05/22.
//

import Foundation
import UIKit

extension UIViewController {
    
    public func alert (customMessage: String){
        let alert = UIAlertController(title: Constants.uiAlertController, message: customMessage, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: Constants.continueText , style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: Constants.cancel, style: UIAlertAction.Style.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
