//
//  TableViewCell.swift
//  Social Network App
//
//  Created by Максим on 27.01.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var groupImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    override func prepareForReuse() {
        groupImageView.image = nil
        nameLabel.text = nil
    }


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(image: UIImage?, name: String?) {
        groupImageView.image = image
        nameLabel.text = name
    }
}


