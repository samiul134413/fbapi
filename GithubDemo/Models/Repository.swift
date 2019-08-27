//
//  Repository.swift
//  GithubDemo
//
//  Created by Samiul Haque on 26/8/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import Foundation

struct Repository: Codable {
    let repoName: String?
    let description: String?
    let owner: Owner?
    
    enum CodingKeys: String, CodingKey {
        case repoName = "name"
        case description = "description"
        case owner = "owner"
    }
    
    
//  USED FOR CUSTOM CODINGKEYS
    
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        repoName = try values.decodeIfPresent(String.self, forKey: .repoName)
//        owner = try values.decodeIfPresent(Owner.self, forKey: .owner)
//        description = try values.decodeIfPresent(String.self, forKey: .description)
//    }
}
