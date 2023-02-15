//
//  GalleryViewController.swift
//  Social Network App
//
//  Created by Максим on 09.02.2022.
//

import UIKit

class GalleryViewController: UIViewController {

    @IBOutlet weak var galleryCollectionView: UICollectionView!

    let reuseIdentifierGalleryCell = "reuseIdentifierGalleryCell"

    var photoArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        galleryCollectionView.dataSource = self
        galleryCollectionView.register(UINib(nibName: "GalleryViewCell",
                                             bundle: nil),
                                       forCellWithReuseIdentifier: reuseIdentifierGalleryCell)
    }
}

extension GalleryViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoArray.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = galleryCollectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierGalleryCell,
                                                                 for: indexPath) as? GalleryViewCell
        else {
            return UICollectionViewCell()
        }

        cell.configure(photoPath: photoArray[indexPath.item])
        return cell
    }
}

extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = galleryCollectionView.bounds.width / 3 - 30
        return CGSize(width: width, height: width)
    }
}
