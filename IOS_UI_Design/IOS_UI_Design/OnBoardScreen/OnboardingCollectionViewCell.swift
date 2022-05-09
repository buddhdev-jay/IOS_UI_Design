//
//  OnboardingCollectionViewCell.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var onBoardImage: RoundedCustomUIImage!
    @IBOutlet weak var onBoardTagLineLabel: OnBoardingDescriptionUILabel!
    @IBOutlet weak var onBoardTitleLabel: OnBoardingheadingUILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // function to configure the cell
    func configureCell(page: Page){
        onBoardImage.image = UIImage(named: page.imageName)
        onBoardTitleLabel.text = page.title
        onBoardTagLineLabel.text = page.description
    }
}
