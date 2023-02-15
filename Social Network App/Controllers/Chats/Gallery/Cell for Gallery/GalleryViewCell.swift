//
//  GalleryViewCell.swift
//  Social Network App
//
//  Created by Максим on 09.02.2022.
//

import UIKit

class GalleryViewCell: UICollectionViewCell {

    @IBOutlet weak var galleryImageView: UIImageView!

    

    override func prepareForReuse() {
        galleryImageView.image = nil
    }

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    func configure(photoPath: String) {
        galleryImageView.image = UIImage(named: photoPath)
    }

}
