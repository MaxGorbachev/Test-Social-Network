//
//  All Chats + TableDelegate.swift
//  Social Network App
//
//  Created by Максим on 27.01.2022.
//

import UIKit

extension People: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightForChatsCell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NotificationCenter.default.post(name: chatInAllChatsPressedNotification, object: allChats[indexPath.row])
    }
}
