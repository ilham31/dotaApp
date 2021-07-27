//
//  SimilarHeroCollectionViewCell.swift
//  dota
//
//  Created by Muhammad Ilham Ramadhan on 26/07/21.
//

import UIKit

class SimilarHeroCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var similarHeroImageView: UIImageView!
    
    func setupCell(heroImage: String) {
        let fileArray = heroImage.components(separatedBy: "/")
        let imagePath = fileArray.last?.replacingOccurrences(of: ".png?", with: "") ?? ""
        if let image = UIImage(named: imagePath) {
            similarHeroImageView.image = image
        }
        else {
            similarHeroImageView.image = UIImage(named: "placeholder")
        }
        
    }
}
