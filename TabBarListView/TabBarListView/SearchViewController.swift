//
//  SearchViewController.swift
//  TabBarListView
//
//  Created by 김승훈 on 2022/08/15.
//

import UIKit

class SearchViewController: UIViewController {
    
    //searchView controller 안에 ColletionView 연결.
    @IBOutlet weak var CollectionVIew: UICollectionView!
    
    //collection View 의 중요한 요소
    //dataSource,presentation,layout
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CollectionVIew.dataSource = self
        CollectionVIew.delegate = self
        
        //flowlayout collection 설정
        
        if let flowlayout = CollectionVIew.collectionViewLayout as?UICollectionViewFlowLayout {
            flowlayout.estimatedItemSize = .zero
        }
        
        
        //uisearch controller.
        self.navigationItem.title = "Search"
        let searchController = UISearchController(searchResultsController: nil)
    }
}
extension SearchViewController : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 24
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = CollectionVIew.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else{ return  UICollectionViewCell()
        }
        let imageName = "animal\(indexPath.item + 1)"
        cell.configure(imageName)
        return cell
    }
}
extension SearchViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let interItemSpacing : CGFloat = 1
        let width = (CollectionVIew.bounds.width - interItemSpacing * 2)/3
        let height = width
        return CGSize(width: width , height: height)
    }
        func collectionView(_ collectionView: UICollectionView, layout CollectionViewLayout:
                            UICollectionViewLayout,
                            minimumInteritemSpacingForSectionAt section : Int) -> CGFloat{ return 1
    }
        func collectionView(_ collectionView: UICollectionView, layout CollectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section : Int) -> CGFloat{ return 1
    }
}




