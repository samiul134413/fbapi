//
//  RoundedView.swift
//  GithubDemo
//
//  Created by Samiul Haque on 26/8/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import UIKit

class RoundedView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = self.frame.height/2
        
    }
}
