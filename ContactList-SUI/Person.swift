//
//  Person.swift
//  ContactList-SUI
//
//  Created by Денис Гиндулин on 08.01.2024.
//

struct Person {
    
    let name: String
    let lastname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(lastname)"
    }
    
    
}
