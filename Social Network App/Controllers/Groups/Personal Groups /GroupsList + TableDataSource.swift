//
//  GroupsList + TableDataSource.swift
//  Social Network App
//
//  Created by Максим on 27.01.2022.
//

import UIKit

extension GroupsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGroups.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdetifierGroupsTableViewCell,
                                                       for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }

        cell.configure(image: nil, name: myGroups[indexPath.row])

        return cell
    }
}
