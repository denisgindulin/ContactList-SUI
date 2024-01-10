//
//  OnePersonView.swift
//  ContactList-SUI
//
//  Created by Денис Гиндулин on 09.01.2024.
//

import SwiftUI

struct PersonView: View {
    let person: Person
    
    var body: some View {
        List {
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.3)
                .padding()
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
        .navigationTitle("\(person.fullName)")
    }
}

struct OnePersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(
            person:
                Person(
                    id: 1,
                    firstName: "Ян",
                    lastName: "Якин",
                    phoneNumber: "007",
                    email: "007@mail.ru"
                )
        )
    }
}
