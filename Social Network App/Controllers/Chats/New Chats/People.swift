//
//  NewChatViewController.swift
//  Social Network App
//
//  Created by Максим on 05.01.2022.
//

import UIKit

class People: UIViewController {

    @IBOutlet weak var newChatTableView: UITableView!
    @IBOutlet weak var allChatsSearchBar: UISearchBar!

    let reuseIdentifierAllChatsTableViewCell = "reuseIdentifierAllChatsTableViewCell"

    var allChats = [Friend]()
    var allChatsChosen = [Friend]()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        newChatTableView.reloadData()
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        fillFriendsData()
        newChatTableView.dataSource = self
        newChatTableView.delegate = self
        newChatTableView.register(UINib(nibName: "ChatTableViewCell",
                                        bundle: nil),
                                  forCellReuseIdentifier: reuseIdentifierAllChatsTableViewCell)
        allChatsSearchBar.delegate = self
        allChatsChosen = allChats
    }

    func fillFriendsData () {
        let friend1 = Friend(name: "Valter White", avatar: "1friend", photos: ["1friend", "2friend", "3friend"])
        let friend2 = Friend(name: "John Dillinger", avatar: "2friend", photos: ["2friend", "1friend", "3friend"])
        let friend3 = Friend(name: "Franco Muller", avatar: "3friend", photos: ["3friend", "1friend", "2friend"])

        allChats.append(friend1)
        allChats.append(friend2)
        allChats.append(friend3)

    }

}
