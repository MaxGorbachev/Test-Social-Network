//
//  Chats + SearchBar.swift
//  Social Network App
//
//  Created by Максим on 04.02.2022.
//

import UIKit

extension MyFriendsViewController: UISearchBarDelegate {

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            myChats = myChatsSelected
        } else {
            myChats = myChatsSelected.filter({ myChatsItem in
                myChatsItem.name.lowercased().contains(searchText.lowercased())
            })
        }
        chatsTableView.reloadData()
    }
}
