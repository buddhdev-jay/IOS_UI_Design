//
//  OnboardingCollectionViewCell.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var onBoardTagLineLabel: UILabel!
    @IBOutlet weak var onBoardTitleLabel: UILabel!
    @IBOutlet weak var onBoardImage: UIImageView! {
        didSet {
            onBoardImage.clipsToBounds = true
            onBoardImage.layer.cornerRadius = onBoardImage.frame.width/2
        }
    }
    
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
