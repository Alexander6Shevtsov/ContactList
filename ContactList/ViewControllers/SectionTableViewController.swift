//
//  SectionTableViewController.swift
//  ContactList
//
//  Created by Alexander Shevtsov on 14.10.2024.
//

import UIKit

final class SectionTableViewController: UITableViewController {

    var persons: [Person]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count // кол секций = кол элем в массиве
    }
    // определяем название для секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // обращаемся к массиву persons по индексу секции
        let person = persons[indexPath.section] // экземпляр модели
        var content = cell.defaultContentConfiguration()
        // в зависимости от строки присваиваем значение
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    // метод снимает выделение с ячейки
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
