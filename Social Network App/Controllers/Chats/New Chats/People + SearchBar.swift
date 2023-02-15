//
//  AllChats + SearchBar.swift
//  Social Network App
//
//  Created by Максим on 04.02.2022.
//

import UIKit

extension People: UISearchBarDelegate {

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            allChats = allChatsChosen
        } else {
            allChats = allChatsChosen.filter({ myChatsItem in
                myChatsItem.name.lowercased().contains(searchText.lowercased())
            })
        }
        newChatTableView.reloadData()
    }
}
