//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Alexander Shevtsov on 14.10.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
// созд экземпляры вьюконтрол, т.к. их 2 цикл не нужен, берем первый и посл элемент
    private func setupViewControllers() { // кастим до нужных типов
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        // инициализируем массив
        let persons = Person.getContactList()
        contactListVC.persons = persons
        sectionVC.persons = persons
    } // массив передаем на остальные экраны
}
