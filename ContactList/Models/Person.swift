//
//  Person.swift
//  ContactList
//
//  Created by Alexander Shevtsov on 14.10.2024.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String { // getter
        "\(name) \(surname)"
    }
     
    static func getContactList() -> [Person] {
        // создали пустой массив
        var persons: [Person] = []
        let dataStore = DataStore.shared // экземпляр DataStore
        // набор массивов
        let names = dataStore.names.shuffled() // .shuffled() перемешивание array
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phones = dataStore.phones.shuffled()
        // кол итераций перебора массива по кол элементов
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        // цикл для перебора массива
        for index in 0..<iterationCount {
            let person = Person( // экземпляр модели
                name: names[index], // берем значение
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            // добавление в массив
            persons.append(person)
        }
        
        return persons
    }
}
