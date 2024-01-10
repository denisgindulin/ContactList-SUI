//
//  ContentView.swift
//  ContactList-SUI
//
//  Created by Денис Гиндулин on 08.01.2024.
//

import SwiftUI

struct ContentView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            TabView {
                PersonListView(persons: persons)
                    .tabItem {
                        Image(systemName: "person.3.sequence")
                        Text("кратко")
                    }
                DetailedContactListView(persons: persons)
                    .tabItem {
                        Image(systemName: "person.text.rectangle")
                        Text("подробно")
                    }
            }
            .navigationTitle("Контакты")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(persons: Person.getContactList())
    }
}
