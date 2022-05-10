//
//  BaseCustomTextField.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 30/04/22.
//

import Foundation
import UIKit

class BaseCustomTextField : UITextField {
    
    //It is called whenever textfield is added through Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
}

// MARK: - UITextFieldDelegate
extension BaseCustomTextField : UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.greenColor.cgColor
    }
}

// MARK: - intail setup
extension BaseCustomTextField {
    
    func setup() {
        self.delegate = self
        self.font = UIFont.init(name: Fonts.poppinsRegular.rawValue, size: CGFloat(Constants.FOURTEEN))
        self.layer.cornerRadius = CGFloat(Constants.TWEVLE)
        self.clipsToBounds = true
        self.layer.borderWidth = CGFloat(Constants.ONE)
        self.layer.borderColor = UIColor.gray.cgColor
        self.backgroundColor = UIColor.white
    }
    
}

// MARK: - Image Setup
extension BaseCustomTextField {
    
    func setUpImage(leftImage:String? = nil,rightImage:String? = nil) {
        //Left Image
        if let leftImage = leftImage {
            leftView = getImageContainerView(leftpadding: Constants.TWENTYSEVENPOINTSEVENTEEN, rightPadding: Double(Constants.FIVE), image: leftImage)
            leftViewMode = .always
        }
        //Right Image
        if let rightImage = rightImage {
            rightView = getImageContainerView(leftpadding: Double(Constants.ZERO), rightPadding: Double(Constants.FIVE), image: rightImage)
            rightViewMode = .always
        }
    }
    
}

// MARK: - Get ImageContainer
extension BaseCustomTextField {
    
    func getImageContainerView(leftpadding:Double,rightPadding:Double,image:String) -> UIView {
        let imageView = UIImageView(frame: CGRect(x: leftpadding, y: rightPadding, width: 25, height: 25))
        if let imageSystem = UIImage(systemName: image) {
            imageView.image = imageSystem
        } else {
            imageView.image = UIImage(named: image)
        }
        let leftImageContainerView = UIView(frame: CGRect(x: Constants.ZERO, y: Constants.ZERO, width: Constants.FOURTY, height: Constants.FOURTY))
        leftImageContainerView.addSubview(imageView)
        return leftImageContainerView
    }
    
}
