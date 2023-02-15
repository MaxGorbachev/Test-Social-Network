//
//  All Groups + TableDataSource.swift
//  Social Network App
//
//  Created by Максим on 27.01.2022.
//

import UIKit

extension AllGroupsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allGroups.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdetifierAllGroupsTableViewCell,
                                                       for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }

        cell.configure(image: nil, name: allGroups[indexPath.row])

        return cell
    }
}
