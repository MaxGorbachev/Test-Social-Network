//
//  All Groups + TableDelegate.swift
//  Social Network App
//
//  Created by Максим on 27.01.2022.
//

import UIKit

extension AllGroupsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightForGroupsCell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NotificationCenter.default.post(name: groupInAllGroupsPressedNotification,
                                        object: allGroups[indexPath.row])
    }
}
