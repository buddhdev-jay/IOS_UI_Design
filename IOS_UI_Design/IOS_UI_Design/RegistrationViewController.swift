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
    @IBOutlet weak var scrollView: UIScrollView!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        confirmPasswordField.delegate = self
        PasswordTextField.delegate = self
        emailTextFiled.delegate = self
        userNameTextField.delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)
    }
}


// MARK: - Outlets Actions
extension RegistrationViewController {
    
    @IBAction func onClickRegister(_ sender: Any) {
        alert(customMessage:Constants.registerButtonClicked )
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
    
    @IBAction func onClickLogin(_ sender: Any) {
        if let loginvc = UIStoryboard(name: Constants.mainStoryboard, bundle: nil).instantiateViewController(withIdentifier: Constants.loginVC) as? LoginViewController {
            self.navigationController?.pushViewController(loginvc, animated: true)
        }
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

extension RegistrationViewController {
    
    @objc fileprivate func keyboardWillShow(notification:NSNotification) {
        guard let userInfo = notification.userInfo else { return }
        var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height + CGFloat(Constants.TWENTY)
        scrollView.contentInset = contentInset
    }
    
    @objc fileprivate func keyboardWillHide(notification:NSNotification) {
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInset
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
