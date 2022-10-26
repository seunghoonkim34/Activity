//
//  ViewController.swift
//  Network_githubpage
//
//  Created by 김승훈 on 2022/09/08.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate, UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        <#code#>
    }
    
  
   
    
    
    
    //setupUI
    //userprofile
    //bind
    //search control
    //network
    
    @Published private(set)
    var user: userProfile?
private var subscriptions = Set<AnyCancellable>()
    
    @IBOutlet weak var thumnail: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var followerLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    setupUI()
    Embededsearchcontroller()
    bind()
        
    func Embededsearchcontroller(){
        self.navigationItem.title = "Search"
        let searchController = UISearchController(searchResultsController: nil)
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.placeholder = "cafieio"
        searchController.searchResultsUpdater =  self
        searchController.searchBar.delegate = self
        self.navigationItem.searchController =  searchController
     }
        
}
   
   private func setupUI(){
       thumnail.layer.cornerRadius = 80
   }
    private func bind(){
        $user
        .receive(on: RunLoop.main)
        .sink(result in self.update)
    }
        .store(in : $subscriptions)
        
    private func update( _ user: userProfile? ){
    }
}

extension UserProfileViewController : UISearchBarDelegate{
    func SearchBarSearchButtonClicked(_ searchBar: UISearchBar){
        print("button clicked \(searchBar.text)")
        
    }
}



