//
//  Chats + TableDataSource.swift
//  Social Network App
//
//  Created by Максим on 27.01.2022.
//

import UIKit

extension MyFriendsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myChats.count
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierMyChatsTableViewCell, for: indexPath) as? ChatTableViewCell else {
            return UITableViewCell()
        }

        cell.configure(friend: myChats[indexPath.row])

        return cell
    }
}
