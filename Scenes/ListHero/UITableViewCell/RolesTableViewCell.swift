//
//  RolesTableViewCell.swift
//  dota
//
//  Created by Muhammad Ilham Ramadhan on 25/07/21.
//

import UIKit

class RolesTableViewCell: UITableViewCell {
    @IBOutlet weak var capsuleView: UIView!
    @IBOutlet weak var rolesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        capsuleView.layer.cornerRadius = capsuleView.frame.height / 2
        self.selectionStyle = .none
    }
}

//MARK: - Setup Cell
extension RolesTableViewCell {
    func setupCell(role: String) {
        rolesLabel.text = role
    }
}
