//
//  GroupsList + TableDelegate.swift
//  Social Network App
//
//  Created by Максим on 27.01.2022.
//

import UIKit

extension GroupsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightForGroupsCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }

    func tableView(_ tableView: UITableView,
                   commit editingStyle: UITableViewCell.EditingStyle,
                   forRowAt indexPath: IndexPath) {
        myGroups.remove(at: indexPath.row)
        myGroupsChosen = myGroups
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}
