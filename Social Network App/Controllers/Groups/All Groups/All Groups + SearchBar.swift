//
//  All Groups + SearchBar.swift
//  Social Network App
//
//  Created by Максим on 04.02.2022.
//

import UIKit

extension AllGroupsViewController: UISearchBarDelegate {

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            allGroups = allGroupsChosen
        } else {
            allGroups = allGroupsChosen.filter({ allGroupsItem in
                allGroupsItem.lowercased().contains(searchText.lowercased())
            })
        }
        allGroupsTableView.reloadData()
    }
}
