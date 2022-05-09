//
//  ProfileViewController.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        turnOnSwipeToBack()
    }
    
    @IBAction func onClickResume(_ sender: UIButton) {
        alert(customMessage: R.string.localizable.resumeButtonClicked())
    }
}

// MARK: - Swipe Back
extension ProfileViewController {
    
    func turnOnSwipeToBack() {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
}

// MARK: - Outlets Actions
extension ProfileViewController {
    
    @IBAction func onClickSeeAllEducation(_ sender: UIButton) {
        alert(customMessage:R.string.localizable.seeAllEducationClicked())
    }
    
    @IBAction func onClickSeeAllExperince(_ sender: Any) {
        alert(customMessage:R.string.localizable.seeAllExperienceClicked())
    }
}
