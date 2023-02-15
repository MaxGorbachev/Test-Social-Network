//
//  GroupsList + SearchBar.swift
//  Social Network App
//
//  Created by Максим on 01.02.2022.
//

import UIKit


extension GroupsViewController: UISearchBarDelegate {

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            myGroups = myGroupsChosen
        } else {
            myGroups = myGroupsChosen.filter({ myGroupsItem in
                myGroupsItem.lowercased().contains(searchText.lowercased())
            })
        }
        groupsTableView.reloadData()
    }
}
