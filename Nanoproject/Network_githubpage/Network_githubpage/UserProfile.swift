//
//  UserProfile.swift
//  Network_githubpage
//
//  Created by 김승훈 on 2022/09/08.
//

import Foundation

struct userProfile : Hashable,Identifiable,Decodable{
    
    var id: Int64
      var login: String
      var name: String
      var avatarUrl: URL
      var htmlUrl: String
      var followers: Int
      var following: Int
}
// enum 값 생성
enum CodingKeys : String,CodingKey{
    
    case id
    case name
    case login
    case avatarUrl =  "avatar_url"
    case htmlUrl =  "html_url"
    case followers
    case following  
    
}


