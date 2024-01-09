//
//  DataStore.swift
//  ContactList-SUI
//
//  Created by Денис Гиндулин on 08.01.2024.
//

final class DataStore {
    static let shared = DataStore()
    
    var firstNames = [
        "Иван",
        "Пётр",
        "Василий",
        "Сергей",
        "Алексей",
        "Дмитрий",
        "Виктор",
        "Николай",
        "Олег",
        "Кирилл"
    ]
    
    var lastNames = [
        "Иванов",
        "Петров",
        "Васильев",
        "Сергеев",
        "Алексеев",
        "Дмитриев",
        "Викторов",
        "Николаев",
        "Олегов",
        "Кириллов"
    ]
    
    var phoneNumbers = [
        "8(901)111-22-33",
        "8(902)444-55-66",
        "8(903)777-88-99",
        "8(904)110-20-30",
        "8(905)440-50-60",
        "8(906)770-80-90",
        "8(907)123-45-67",
        "8(908)765-43-21",
        "8(909)007-08-09",
        "8(910)001-02-03"
    ]
    
    var emails = [
        "abc@mail.ru",
        "def@gmail.com",
        "ghi@me.com",
        "jkl@gmail.com",
        "mno@me.com",
        "pqr@gmail.com",
        "stu@me.com",
        "vwx@gmail.com",
        "xyz@me.com",
        "how@gmail.com"
    ]
    
    private init() {}
}
