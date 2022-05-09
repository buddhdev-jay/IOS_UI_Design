//
//  OnBoardingViewController.swift
//  IOS_UI_Design
//
//  Created by Jay Buddhdev on 04/05/22.
//

import UIKit

class OnBoardingViewController: UIViewController, UICollectionViewDelegate {
    
    // MARK: - Outlets
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var nextButton: NextUIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Variables
    var pages = [Page]()
    var current = 0 {
        didSet {
            pageControl.currentPage = current
            if (current == pages.count - 1) {
                nextButton.setTitle("Explore", for: .normal)
                skipButton.isHidden = true
            } else {
                nextButton.setTitle("Next", for: .normal)
                skipButton.isHidden = false
            }
            
        }
    }
    
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "OnboardingCollectionViewCell", bundle: Bundle.main),forCellWithReuseIdentifier: "OnboardingCollectionViewCell")
        setData()
        pageControl.numberOfPages = pages.count
    }
}

// MARK: - Outlets Actions
extension OnBoardingViewController {
    
    @IBAction func onNextButtonClick(_ sender: NextUIButton) {
        if (current == pages.count - 1) {
            if let registartionvc = UIStoryboard(name: Constants.MainStroyBoard, bundle: nil).instantiateViewController(withIdentifier:Constants.RegistrationViewController) as?  RegistrationViewController {
                self.navigationController?.pushViewController(registartionvc, animated: true)
            }
        } else {
            current += 1
            let indexPath = IndexPath(item: current, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
    @IBAction func pageChanged(_ sender: UIPageControl) {
        collectionView.scrollToItem(at: IndexPath(item:sender.currentPage, section: 0), at: .centeredHorizontally, animated: true)
    }
    
    @IBAction func onClickSkipButton(_ sender: Any) {
        if let registartionvc = UIStoryboard(name: Constants.MainStroyBoard, bundle: nil).instantiateViewController(withIdentifier:Constants.RegistrationViewController) as?  RegistrationViewController {
            self.navigationController?.pushViewController(registartionvc, animated: true)
        }
    }
}

// MARK: - set Data
extension OnBoardingViewController {
    
    func setData(){
        pages.append(Page(imageName:R.image.onBoardImageone.name, title: R.string.localizable.onBoardTitleOne(), description: R.string.localizable.onBoardTagOne()))
        pages.append(Page(imageName: R.image.onBoardImagetwo.name, title: R.string.localizable.onBoardTitleTwo(), description: R.string.localizable.onBoardTagTwo()))
        pages.append(Page(imageName: R.image.onBoardImagethree.name, title: R.string.localizable.onBoardTitleThree(), description: R.string.localizable.onBoardTagThree()))
    }
    
}

extension OnBoardingViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CollectionViewCell,for: indexPath) as? OnboardingCollectionViewCell {
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
        return CGFloat(Constants.ZERO)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(Constants.ZERO)
    }
    
}
