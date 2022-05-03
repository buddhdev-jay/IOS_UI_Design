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
    private var textPadding = UIEdgeInsets(top: 12, left: 13.29, bottom: 12, right: 13.29)
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
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    //This padding will be given when text will be in editing mode
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
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

// MARK: - intial setup
extension BaseCustomTextField {
    func setup(){
        self.delegate = self
        self.font = UIFont.init(name: "PoppinsRegular", size: 14)
        self.layer.cornerRadius = 12
        self.clipsToBounds = true
        self.layer.borderWidth = 1
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
        contentView.frame = CGRect(x: 0, y: 0, width: 40, height: 30)
        imageIcon.frame = CGRect(x: -15, y: 0, width: 40, height: 30)
        contentView.contentMode = .scaleToFill
        imageIcon.imageView?.contentMode = .scaleToFill
        self.rightView = contentView
        self.contentHorizontalAlignment = .fill
        self.contentVerticalAlignment = .fill
        self.rightViewMode = .always
        self.isSecureTextEntry = true
        imageIcon.backgroundColor = UIColor.clear
        imageIcon.isSelected = true
        imageIcon.setImage(UIImage(named: "passwordeye_close")!, for: .normal)
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
        let leftImageContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        leftImageContainerView.addSubview(imageView)
        return leftImageContainerView
    }
    
}

// MARK: - Password Toggle
extension BaseCustomTextField {
    
    @objc func toggle(_ sender: UIButton) {
        if(sender.isSelected) {
            sender.isSelected = !sender.isSelected
            imageIcon.setImage(UIImage(named: "passwordeye_open")!, for: .normal)
            self.isSecureTextEntry = false
            imageIcon.imageView?.image?.withRenderingMode(.alwaysTemplate)
            
        } else {
            sender.isSelected = !sender.isSelected
            imageIcon.setImage(UIImage(named: "passwordeye_close")!, for: .normal)
            self.isSecureTextEntry = true
            imageIcon.imageView?.image?.withRenderingMode(.alwaysTemplate)
        }
    }
    
}

// MARK: - Image Setup
extension BaseCustomTextField {
    
    func setUpImage(leftImage:String? = nil,rightImage:String? = nil) {
        //Left Image
        if let leftImage = leftImage {
            leftView = getImageContainerView(leftpadding: 27.17, rightPadding: 5, image: leftImage)
            leftViewMode = .always
        }
        //Right Image
        if let rightImage = rightImage {
            rightView = getImageContainerView(leftpadding: 0, rightPadding: 5, image: rightImage)
            rightViewMode = .always
        }
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
