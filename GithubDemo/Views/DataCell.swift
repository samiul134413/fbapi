//
//  DataCell.swift
//  GithubDemo
//
//  Created by Samiul Haque on 27/8/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import UIKit

class DataCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: RoundedView!
    @IBOutlet weak var repoLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        self.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }

    func loadImage(repo: Repository)
    {
        let stringURL = repo.owner?.avatarUrl
        //debugPrint(stringURL!)
        //print(stringURL!)
        let url = URL(string: stringURL!)
        let data = try? Data(contentsOf: url! )
        
        if let imageData = data {
            //print("Image Success!")
            let image = UIImage(data: imageData)
            self.avatarImageView.image = image
        }
        
    }
    func setLabel(repo: Repository)
    {
        
        self.repoLabel.text = repo.repoName
        self.ownerLabel.text = repo.owner?.name
        self.descriptionLabel.text = repo.description
        
        
        
    }
    

}
