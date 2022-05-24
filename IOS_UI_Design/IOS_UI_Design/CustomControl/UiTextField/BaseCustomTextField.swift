//
//  BaseCustomTextField.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 30/04/22.
//

import Foundation
import UIKit

class BaseCustomTextField : UITextField {
    
    // MARK: - variables
    private var textPadding = UIEdgeInsets(top: CGFloat(Constants.TWEVLE), left: Constants.THIRTEENPOINTTWENTYNINE, bottom: CGFloat(Constants.TWEVLE), right: Constants.THIRTEENPOINTTWENTYNINE)
    private let imageIcon = UIButton()
    
    //It is called whenever textfield is added programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    //It is called whenever textfield is added through Storyboard
    @objc required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    //This Padding will be given when text is there
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return super.textRect(forBounds: bounds).inset(by: textPadding)
    }
    
    //This padding will be given when text will be in editing mode
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return super.editingRect(forBounds: bounds).inset(by: textPadding)
    }
    override func becomeFirstResponder() -> Bool {
        self.layer.borderColor = UIColor.greenColor.cgColor
        return super.becomeFirstResponder()
    }
    
    override func resignFirstResponder() -> Bool {
        self.layer.borderColor = UIColor.gray.cgColor
        return super.resignFirstResponder()
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

// MARK: - setup Button
extension BaseCustomTextField {
    
    func setUpButton(){
        imageIcon.addTarget(self, action: #selector(self.toggle), for: .touchUpInside)
        let contentView = UIView()
        contentView.addSubview(imageIcon)
        contentView.frame = CGRect(x: Constants.ZERO, y: Constants.ZERO, width: Constants.FOURTY, height: Constants.THIRTY)
        imageIcon.frame = CGRect(x: Constants.MINUSFIFTEEN, y: Constants.ZERO, width: Constants.FOURTY, height: Constants.THIRTY)
        contentView.contentMode = .scaleToFill
        imageIcon.imageView?.contentMode = .scaleToFill
        self.rightView = contentView
        self.contentHorizontalAlignment = .fill
        self.contentVerticalAlignment = .fill
        self.rightViewMode = .always
        self.isSecureTextEntry = true
        imageIcon.backgroundColor = UIColor.clear
        imageIcon.isSelected = true
        imageIcon.setImage(UIImage(named: Constants.passwordEyeClose)!, for: .normal)
    }
    
}

// MARK: - Password Toggle
extension BaseCustomTextField {
    
    @objc func toggle(_ sender: UIButton) {
        sender.isSelected ? imageIcon.setImage(UIImage(named: "passwordeye_open")!, for: .normal) : imageIcon.setImage(UIImage(named: "passwordeye_close")!, for: .normal)
        sender.isSelected = !sender.isSelected
        self.isSecureTextEntry = sender.isSelected
        imageIcon.imageView?.image?.withRenderingMode(.alwaysTemplate)
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

// MARK: - UITextFieldDelegate
extension BaseCustomTextField : UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.greenColor.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.gray.cgColor
    }
    
}
