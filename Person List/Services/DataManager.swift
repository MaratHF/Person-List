//
//  DataManager.swift
//  Person List
//
//  Created by MAC  on 22.03.2022.
//

class DataManager {
    
    var names = [
        "Jonh",
        "Anar",
        "Sven",
        "Leon",
        "Hidan",
        "Pall",
        "Robot",
        "Teodor"
    ]
    
    var surnames = [
        "Ivanov",
        "Parfenov",
        "Vikont",
        "Rubik",
        "Papich",
        "Babangida",
        "Scorpion",
        "Mukhtar"
    ]
    
    var phoneNumbers = [
        "89218644734",
        "38163518123",
        "78163618223",
        "22211531756",
        "51176136373",
        "33236251772",
        "78163713517",
        "12173816361"
    ]
    
    var emails = [
        "aaa@mail.ru",
        "baban@gmail.com",
        "Nagibator228@mail.ru",
        "vapapa@yandex.ru",
        "lalala@list.ru",
        "karamelka@mail.ru",
        "ZeroСool@gmail.com",
        "omicron@mail.ru"
    ]
    
    func getRandomPerson() -> [Person] {
        
        var persons: [Person] = []
        var person = Person()
        
        for _ in names {
            let randomName = names.remove(at: Int.random(in: names.startIndex..<names.endIndex))
            person.name = randomName
            let randomSurname = surnames.remove(at: Int.random(in: surnames.startIndex..<surnames.endIndex))
            person.surname = randomSurname
            let randomePhoneNumber = phoneNumbers.remove(at: Int.random(in: phoneNumbers.startIndex..<phoneNumbers.endIndex))
            person.phoneNumber = randomePhoneNumber
            let randomEmail = emails.remove(at: Int.random(in: emails.startIndex..<emails.endIndex))
            person.email = randomEmail
            persons.append(person)
        }
        return persons
    }
}
