//
//  PersonListView.swift
//  ContactList-SUI
//
//  Created by Денис Гиндулин on 09.01.2024.
//

import SwiftUI

struct PersonListView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            NavigationLink(destination: PersonView(person: person)) {
                Text("\(person.fullName)")
            }
        }
        .listStyle(.plain)
        .font(.title)
        .padding()
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView(persons: Person.getContactList())
    }
}
