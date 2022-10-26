//
//  SearchViewControllerCell.swift
//  TabBarListView
//
//  Created by 김승훈 on 2022/08/15.
//

import UIKit


class CollectionViewCell: UICollectionViewCell{ //Thumnail image 함수 imageView Source
    @IBOutlet weak var Thumnail: UIImageView!
    
    //재사용 되기전에 준비하는 함수
    override func prepareForReuse(){
        super.prepareForReuse()
        Thumnail.image = nil
        //self.Thumnail = . none
        //   self.Thumnail delegate(대리자) 선언문
    }
    //Thumnail_image 파일 함수 지정
    func configure(_ ImageName : String){
        Thumnail.image = UIImage(named : ImageName)
        
    }
}

