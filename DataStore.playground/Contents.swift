import Foundation

final class DataStore {
    
    static let shared = DataStore()
// всегда let, если будет нужно Xcode предложит поменять
    var names = [
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven",
        "Sharon",
        "Nicola",
        "Allan",
        "Bruce",
        "Carl"
    ]
    
    let surnames = [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankin",
        "Butler",
        "Black",
        "Robertson",
        "Murphy",
        "Williams"
    ]
    
    let emails = [
        "jjjj@mail.ru",
        "aaaa@mail.ru",
        "eeee@mail.ru",
        "hhhh@mail.ru",
        "wwww@mail.ru",
        "mmmm@mail.ru",
        "xxxx@mail.ru",
        "pppp@mail.ru",
        "ssss@mail.ru",
        "llll@mail.ru"
    ]
    
    let phones = [
        "745396026",
        "145036843",
        "287185656",
        "293520954",
        "562880225",
        "738594072",
        "825654134",
        "645898473",
        "432349845",
        "459477625"
    ]
    
    private init() {} // инициализируем private чтоб не плодить сущности
}
    // расширение функционала
final class PersonManager {
    static let shared = PersonManager()
    private let dataStore = DataStore.shared // экземпляр
    
    private init() {}
    // добавление нового пользователя
    func add(name: String) {
// if array имен в dataStore не содержит имя из параметра neme
        if !dataStore.names.contains(name) {
            dataStore.names.append(name) // add это имя к текущему списку
        }
    }
    // просмотр список имен
    func getNames() {
        dataStore.names.forEach { name in
            print(name)
        }
    }
}

let pm1 = PersonManager.shared
pm1.add(name: "Rick")
pm1.getNames()

print()

let pm2 = PersonManager.shared
pm2.getNames()

pm1 === pm2
