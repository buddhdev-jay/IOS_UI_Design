//
//  OnBoardingViewController.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import UIKit

class OnBoardingViewController: UIViewController, UICollectionViewDelegate {
    
    @IBOutlet weak var skipButton: SkipUIButton!
    @IBOutlet weak var nextButton: NextUIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    

    var pages = [Page]()
    var current = 0 {
        didSet {
            pageControl.currentPage = current
            if(current == pages.count - 1) {
                nextButton.setTitle("Explore", for: .normal)
                skipButton.isHidden = true
            } else {
                nextButton.setTitle("Next", for: .normal)
                skipButton.isHidden = false
            }
     
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "OnboardingCollectionViewCell", bundle: Bundle.main),forCellWithReuseIdentifier: "OnboardingCollectionViewCell")
        setData()
       pageControl.numberOfPages = pages.count
        
        
    }
}


extension OnBoardingViewController {
    
    @IBAction func onNextButtonClick(_ sender: NextUIButton) {
        if (current == pages.count - 1) {
            alert(customMessage: "End of Pages")
        }
        else {
            current += 1
            let indexPath = IndexPath(item: current, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
    @IBAction func pageChanged(_ sender: UIPageControl) {
        collectionView.scrollToItem(at: IndexPath(item:sender.currentPage, section: 0),at: .centeredHorizontally, animated: true)
    }
}

// MARK: - set Data
extension OnBoardingViewController {
    
    func setData(){
        pages.append(Page(imageName:"onBoardImageone", title: "Search your job", description: "Figure out your top five priorities whether it is company culture, salary."))
        pages.append(Page(imageName: "onBoardImagetwo", title: "Apply to best jobs", description: "You can apply to your desirable jobs very quickly and easily with ease."))
        pages.append(Page(imageName: "onBoardImagethree", title: "Make your career", description: "We help you find your dream job based on your skillset, location, demand."))
    }
}

extension OnBoardingViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell",for: indexPath) as? OnboardingCollectionViewCell {
            cell.configureCell(page: pages[indexPath.item])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        current = Int(scrollView.contentOffset.x/width)
    }
    
}

extension OnBoardingViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(0)
    }
}
