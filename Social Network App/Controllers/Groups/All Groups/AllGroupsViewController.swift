//
//  AllGroupsViewController.swift
//  Social Network App
//
//  Created by Максим on 05.01.2022.
//

import UIKit

class AllGroupsViewController: UIViewController {

    @IBOutlet weak var allGroupsTableView: UITableView!
    @IBOutlet weak var allGroupsSearchBar: UISearchBar!

    let reuseIdetifierAllGroupsTableViewCell = "reuseIdetifierAllGroupsTableViewCell"

    var allGroups = ["Cars", "Flowers", "Art", "Gym Fans", "Planes", "Burning Man"]
    var allGroupsChosen = [String]()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        allGroupsTableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        allGroupsTableView.dataSource = self
        allGroupsTableView.delegate = self
        allGroupsTableView.register(UINib(nibName: "TableViewCell",
                                          bundle: nil),
                                    forCellReuseIdentifier: reuseIdetifierAllGroupsTableViewCell)
        allGroupsSearchBar.delegate = self
        allGroupsChosen = allGroups
    }
}
