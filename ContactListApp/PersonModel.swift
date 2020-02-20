//
//  PersonModel.swift
//  ContactListApp
//
//  Created by Manager on 20/02/2020.
//  Copyright © 2020 Inna. All rights reserved.
//

struct Person {
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
    var fullname: String {
        "\(name) \(surname)"
        
    }
}

extension Person {
    
    static func getPersonsContacts() -> [Person] {
        
        var persons: [Person] = []
        
        //хранить и перемешивать массивы нужно явно не здесь
        let names = ["Anna", "Pavel", "Marina", "Anton", "Ivan"]
        let surnames = ["Daragan", "Pravosud", "Solomonik", "Grinblat", "Sabko"]
        let phoneNumbers = ["8943456", "7893471", "8902345", "7654912", "8903231"]
        let emails = ["apple@gmail.com", "orange@bk.ru", "watermelon@mail.ru", "banana@yandex.ru", "cherry@yahoo.com"]
        
        let mixedNames = names.shuffled()
        let mixedsurnames = surnames.shuffled()
        let mixedphoneNumbers = phoneNumbers.shuffled()
        let mixedemails = emails.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: mixedNames[index],
                                surname: mixedsurnames[index],
                                phoneNumber: mixedphoneNumbers[index],
                                email: mixedemails[index])
            persons.append(person)
        }
        return persons
    }
}
