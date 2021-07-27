//
//  HeroCollectionViewCell.swift
//  dota
//
//  Created by Muhammad Ilham Ramadhan on 25/07/21.
//

import UIKit

class HeroCollectionViewCell: UICollectionViewCell {
    struct HeroViewModel {
        let name: String
        let image: String
    }
    
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroNameLabel: UILabel!
    
    func setupCell(hero: HeroViewModel) {
        heroNameLabel.text = hero.name
        let fileArray = hero.image.components(separatedBy: "/")
        let imagePath = fileArray.last?.replacingOccurrences(of: ".png?", with: "") ?? ""
        if let image = UIImage(named: imagePath) {
            heroImageView.image = image
        }
        else {
            heroImageView.image = UIImage(named: "placeholder")
        }
        
    }
}
