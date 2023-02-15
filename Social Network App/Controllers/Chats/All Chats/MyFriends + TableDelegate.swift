//
//  Chats + TableDelegate.swift
//  Social Network App
//
//  Created by Максим on 27.01.2022.
//

import UIKit


extension MyFriendsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightForChatsCell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }

    func tableView(_ tableView: UITableView,
                   commit editingStyle: UITableViewCell.EditingStyle,
                   forRowAt indexPath: IndexPath) {
        myChats.remove(at: indexPath.row)
        myChatsSelected = myChats
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}
