//
//  All Chats + TableDataSource.swift
//  Social Network App
//
//  Created by Максим on 27.01.2022.
//

import UIKit

extension People: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allChats.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierAllChatsTableViewCell,
                                                       for: indexPath) as? ChatTableViewCell else {return UITableViewCell()}

        cell.configure(friend: allChats[indexPath.row])

        return cell
    }
}
