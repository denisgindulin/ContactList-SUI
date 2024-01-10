//
//  DetailedContactListView.swift
//  ContactList-SUI
//
//  Created by Денис Гиндулин on 09.01.2024.
//

import SwiftUI

struct DetailedContactListView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Section(
                header:
                    Text(person.fullName)
                        .font(.title2)
                        .foregroundColor(.black)
            ) {
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "phone")
                            .frame(width: 40)
                            .foregroundColor(.accentColor)
                        Text(person.phoneNumber)
                    }
                    HStack {
                        Image(systemName: "envelope")
                            .frame(width: 40)
                            .foregroundColor(.accentColor)
                        Text(person.email)
                    }
                }
                .font(.title)
                .opacity(0.5)
            }
        }
    }
}

struct DetailedContactListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactListView(persons: Person.getContactList())
    }
}
