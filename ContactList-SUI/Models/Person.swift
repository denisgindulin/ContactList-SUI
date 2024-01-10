//
//  Person.swift
//  ContactList-SUI
//
//  Created by Денис Гиндулин on 08.01.2024.
//

struct Person: Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let dataStore = DataStore.shared
                
        let ids = dataStore.ids
        let firstNames = dataStore.firstNames.shuffled()
        let lastNames = dataStore.lastNames.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let iterationCount = min(
            ids.count,
            firstNames.count,
            lastNames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                id: ids[index],
                firstName: firstNames[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
