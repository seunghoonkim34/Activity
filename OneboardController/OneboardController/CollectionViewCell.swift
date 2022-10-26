//
//  CollectionViewCell.swift
//  OneboardController
//
//  Created by 김승훈 on 2022/08/21.
//

import UIKit
class CollcetionCell : UICollectionViewCell{

//@IBOutlet
@IBOutlet weak var Thumnail: UIImageView!
@IBOutlet weak var MainTitle: UILabel!
@IBOutlet weak var SubTitle: UILabel!
    
//configure reload
    func configure(_ message : OnboardingViewController
    ){
            Thumnail.image = UIImage(named:"animal2")
            MainTitle.text = message.title
            SubTitle.text = message.title
    }
}


