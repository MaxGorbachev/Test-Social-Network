//
//  FriendsViewController.swift
//  Social Network App
//
//  Created by Максим on 05.01.2022.
//

import UIKit

class GroupsViewController: UIViewController {

    @IBOutlet weak var groupsTableView: UITableView!
    @IBOutlet weak var myGroupsSearchBar: UISearchBar!

    let reuseIdetifierGroupsTableViewCell = "reuseIdetifierTableViewCell"

    var myGroups = [String]()
    var myGroupsChosen = [String]()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        groupsTableView.reloadData()
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        groupsTableView.dataSource = self
        groupsTableView.delegate = self
        groupsTableView.register(UINib(nibName: "TableViewCell",
                                       bundle: nil),
                                 forCellReuseIdentifier: reuseIdetifierGroupsTableViewCell)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(addGroupFromAllGroup(_:)),
                                               name: groupInAllGroupsPressedNotification,
                                               object: nil)
        myGroupsSearchBar.delegate = self
        myGroupsChosen = myGroups
    }

    @objc func addGroupFromAllGroup(_ notification: Notification) {
        guard let newGroup = notification.object as? String else {return}

        if isAlreadyAdded(item: newGroup) {
            let loginAlert = UIAlertController(title: "Ошибка",
                                               message: "Эта группа уже добавлена, нет смысла добавлять её ещё раз!",
                                               preferredStyle: .alert)
            let loginAction = UIAlertAction(title: "ОК",
                                            style: .cancel,
                                            handler: nil)
            loginAlert.addAction(loginAction)
            present(loginAlert, animated: true, completion: nil)
        } else {
            myGroups.append(newGroup)
            myGroupsChosen = myGroups
        }
    }

    func isAlreadyAdded(item: String) -> Bool {
        myGroups.contains { myGroupsItem in
            myGroupsItem == item
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
