//
//  LoginViewController.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 03/05/22.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var passwordTextField: PasswordTextField!
    @IBOutlet weak var emailTextField: EmailTextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
   
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        self.hideKeyboardWhenTappedAround()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
}

// MARK: - Outlet Actions
extension LoginViewController {
    
    @IBAction func onClickRegisterButton(_ sender: Any) {
        if let onBoardvc = UIStoryboard(name: "OnBoardingStoryboard", bundle: nil).instantiateViewController(withIdentifier:"OnBoardingViewController") as? OnBoardingViewController {
            self.navigationController?.pushViewController(onBoardvc, animated: true)
        }
    }
    
    @IBAction func onClickLoginButton(_ sender: UIButton) {
        if let onBoardvc = UIStoryboard(name: "ProfileStoryboard", bundle: nil).instantiateViewController(withIdentifier:"profileViewController") as? ProfileViewController {
            self.navigationController?.pushViewController(onBoardvc, animated: true)
        }
    }
    
    @IBAction func onClickNavigationBar(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func onClickForgetPassword(_ sender: UIButton) {
        alert(customMessage: "Forget Password Clicked")
    }
    
}

// MARK: - Hide Keyboard
extension LoginViewController {
    
    func hideKeyboardWhenTappedAround() {
            let tap = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
            tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
        }
        @objc func dismissKeyboard() {
            view.endEditing(true)
        }
    
}

extension LoginViewController {
    
    @objc fileprivate func keyboardWillShow(notification:NSNotification) {
        guard let userInfo = notification.userInfo else { return }
        var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height + 20
        scrollView.contentInset = contentInset
    }
    @objc fileprivate func keyboardWillHide(notification:NSNotification) {
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInset
    }
    
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailTextField :
            passwordTextField.becomeFirstResponder()
        case  passwordTextField:
            passwordTextField.resignFirstResponder()
        default:
            break
        }
        return true
    }
    
}
