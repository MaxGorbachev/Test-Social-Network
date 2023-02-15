//
//  MainPageViewController.swift
//  Social Network App
//
//  Created by Максим on 03.01.2022.
//

import UIKit

class NewsPageViewController: UIViewController {

    @IBOutlet weak var newsPageTableView: UITableView!

    let reuseIdentifierStandartCell = "reuseIdentifierStandartCell"
    let cellsAmount = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsPageTableView.dataSource = self
        newsPageTableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifierStandartCell)

    }


}

extension NewsPageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellsAmount
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newsPageTableView.dequeueReusableCell(withIdentifier: reuseIdentifierStandartCell, for: indexPath)

        cell.textLabel?.text = ""

        if indexPath.row % 2 == 0 {
            cell.textLabel?.text = String(indexPath.row) + "'ая новость за сегодня!"
        }

        return cell
    }

}

