 //
//  ViewController.swift
//  OneboardController
//
//  Created by 김승훈 on 2022/08/17.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    //Collection @IBOutlet
    @IBOutlet weak var CollectionViewController: UICollectionView!
    @IBOutlet weak var CollectionViewCell: CollcetionCell!
        
    override func viewDidLoad(){
        super.viewDidLoad()
            
        CollcetionCell.dataSource = self
        CollcetionCell.delegate = self

    //layout 만들기
    if let layout =
        CollcetionCell.UICollectionViewLayout as?
        UICollectionViewFlowLayout{layout.estimatesSize = .zero
        
            }
        }
    
    extension CollectionViewCell :  
}













