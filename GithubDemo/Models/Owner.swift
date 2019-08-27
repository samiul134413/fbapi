//
//  Owner.swift
//  GithubDemo
//
//  Created by Samiul Haque on 26/8/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import Foundation

struct Owner: Codable {
    let name: String
    let avatarUrl: String
    
    enum CodingKeys: String, CodingKey {
        case name = "login"
        case avatarUrl = "avatar_url"
    }
    
    
}
