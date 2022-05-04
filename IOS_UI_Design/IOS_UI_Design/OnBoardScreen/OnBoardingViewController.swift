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
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let pages: [Page] = [Page(imageName:"onBoardImageone", title: "Search your job", description: "Figure out your top five priorities whether it is company culture, salary."),
                         Page(imageName: "onBoardImagetwo", title: "Browse jobs list", description: "Our job list include several  industries, so you can find the best job for you."),
                         Page(imageName: "onBoardImagethree", title: "Apply to best jobs", description: "You can apply to your desirable jobs very quickly and easily with ease."),
                         Page(imageName: "onBoardImagefour", title: "Make your career", description: "We help you find your dream job based on your skillset, location, demand.")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "OnboardingCollectionViewCell", bundle: Bundle.main),
                                forCellWithReuseIdentifier: "OnboardingCollectionViewCell")
        pageControl.numberOfPages = pages.count
        
    }
    @IBAction func pageChanged(_ sender: Any) {
        let pc = sender as! UIPageControl
        collectionView.scrollToItem(at: IndexPath(item: pc.currentPage, section: 0),
                                    at: .centeredHorizontally, animated: true)
        
    }
    // to update the UIPageControl
    func scrollViewDidzEndDecelerating(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
}

extension OnBoardingViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCollectionViewCell",
                                                         for: indexPath) as? OnboardingCollectionViewCell {
            cell.configureCell(page: pages[indexPath.item])
            return cell
        }
        return UICollectionViewCell()
    }
    
}

extension OnBoardingViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.width, height: self.collectionView.frame.height)
    }
}
