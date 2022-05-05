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
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if(currentPage != pages.count - 1) {
                nextButton.setTitle("Next", for: .normal)
                skipButton.isHidden = false
               
            } else {
                nextButton.setTitle("Explore", for: .normal)
                skipButton.isHidden = true
                

            }
           
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "OnboardingCollectionViewCell", bundle: Bundle.main),
                                forCellWithReuseIdentifier: "OnboardingCollectionViewCell")
        pageControl.numberOfPages = pages.count
        setData()
        
    }
    @IBAction func onNextButtonClick(_ sender: NextUIButton) {
        if (currentPage == pages.count - 1){
            alert(customMessage: "End of Pages")
        }
        else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
        
    }
    
    @IBAction func pageChanged(_ sender: Any) {
        let pageControl = sender as! UIPageControl
        collectionView.scrollToItem(at: IndexPath(item:pageControl.currentPage, section: 0),
                                    at: .centeredHorizontally, animated: true)
        
    }
    
    
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
        currentPage = Int(scrollView.contentOffset.x/width)
        
    }
    
}

extension OnBoardingViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionHeight = collectionView.bounds.height
        let cellWidth = UIScreen.main.bounds.width
        return CGSize(width: cellWidth, height: collectionHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(0)
    }
}
