//
//  ChatTableViewCell.swift
//  Social Network App
//
//  Created by Максим on 27.01.2022.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var friendImageView: UIImageView!
    @IBOutlet weak var friendNameLabel: UILabel!


    override func prepareForReuse() {
        friendImageView.image = nil
        friendNameLabel.text = nil
    }


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(image: UIImage?, name: String?) {
        friendImageView.image = image
        friendNameLabel.text = name
    }

    func configure(friend: Friend) {
        friendImageView.image = UIImage(named: friend.avatar)
        friendNameLabel.text = friend.name
    }
}
