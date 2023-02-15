//
//  ChatsViewController.swift
//  Social Network App
//
//  Created by Максим on 05.01.2022.
//

import UIKit

class MyFriendsViewController: UIViewController {

    @IBOutlet weak var chatsTableView: UITableView!
    @IBOutlet weak var myChatsSearchBar: UISearchBar!

    let reuseIdentifierMyChatsTableViewCell = "reuseIdentifierMyChatsTableViewCell"

    var myChats = [Friend]()
    var myChatsSelected = [Friend]()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        chatsTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatsTableView.dataSource = self
        chatsTableView.delegate = self
        chatsTableView.register(UINib(nibName: "ChatTableViewCell",
                                      bundle: nil),
                                forCellReuseIdentifier: reuseIdentifierMyChatsTableViewCell)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(addChatFromAllChats(_:)),
                                               name: chatInAllChatsPressedNotification,
                                               object: nil)
        myChatsSearchBar.delegate = self
        
    }

    @objc func addChatFromAllChats(_ notification: Notification) {
        guard let newChat = notification.object as? Friend else {return}

        if isAlreadyAdded(item: newChat) {
            let addedFriendAlert = UIAlertController(title: "Ошибка",
                                                     message: "Этот чат уже добавлен, можешь смело начинать общаться!",
                                                     preferredStyle: .alert)
            let addedFriendAction = UIAlertAction(title: "ОК",
                                                  style: .cancel,
                                                  handler: nil)
            addedFriendAlert.addAction(addedFriendAction)
            present(addedFriendAlert, animated: true, completion: nil)
        } else {
            myChats.append(newChat)
            myChatsSelected = myChats
        }
    }
    
    func isAlreadyAdded(item: Friend) -> Bool {
        myChats.contains { myChatsItem in
            myChatsItem.name == item.name
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
