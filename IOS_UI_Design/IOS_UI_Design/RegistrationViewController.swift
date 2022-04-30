//
//  RegistrationViewController.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 02/05/22.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var confirmPasswordField: PasswordTextField!
    @IBOutlet weak var PasswordTextField: PasswordTextField!
    @IBOutlet weak var emailTextFiled: EmailTextField!
    @IBOutlet weak var userNameTextField: UserNameTextFiled!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        confirmPasswordField.delegate = self
        PasswordTextField.delegate = self
        emailTextFiled.delegate = self
        userNameTextField.delegate = self
    }
}


// MARK: - Outlets Actions
extension RegistrationViewController {
    
    @IBAction func onClickRegister(_ sender: Any) {
        alert(customMessage:Constants.registerButtonClicked )
    }
    
    @IBAction func onClickLogin(_ sender: Any) {
        alert(customMessage:Constants.loginButtonClicked )
    }
    
    @IBAction func onClickofAppleButton(_ sender: UIButton) {
        alert(customMessage:Constants.appleButtonClicked)
    }
    
    @IBAction func onClickofGoogleButton(_ sender: UIButton) {
        alert(customMessage:Constants.googleButtonClicked)
    }
    
    @IBAction func onClickofFacebookButton(_ sender: UIButton) {
        alert(customMessage:Constants.facebookbuttonClcked)
    }
    
}

// MARK: - Hide Keyboard
extension RegistrationViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(RegistrationViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}

// MARK: - UITextFieldDelegate
extension RegistrationViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case userNameTextField :
            emailTextFiled.becomeFirstResponder()
        case  emailTextFiled:
            PasswordTextField.becomeFirstResponder()
        case  PasswordTextField:
            confirmPasswordField.becomeFirstResponder()
        case  confirmPasswordField:
            confirmPasswordField.resignFirstResponder()
        default:
            break
        }
        return true
    }
    
}
