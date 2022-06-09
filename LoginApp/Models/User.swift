//
//  User.swift
//  LoginApp
//
//  Created by Елена Павлова on 06.06.2022.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let description: String
    let wishes: [Wish]
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Elena",
            surname: "Pavlova",
            photo: "aboutMe",
            description: "I’m interested in IOS development. I’m currently learning Swift.",
            wishes: Wish.getWishBoard()
        )
    }
}

struct Wish {
    let title: String
    let description: String
    let image: String
    
    static func getWishBoard() -> [Wish] {
        [ Wish(title: "I want to work as an iOS developer", description: "An iOS developer is responsible for developing applications for mobile devices powered by Apple’s iOS operating system.", image: "mobile_dev"),
          Wish(title: "I want to go to Burning Man", description: "Burning Man is an event focused on community, art, self-expression, and self-reliance held annually in the western United States. The name of the event comes from its culminating ceremony: the symbolic burning of a large wooden effigy, referred to as the Man.", image: "Burning_Man"),
          Wish(title: "I want to watch the football match at Wembley Stadium", description: "Wembley Stadium is owned by the governing body of English football, the Football Association. With 90,000 seats, it is the largest stadium in the UK and the second-largest stadium in Europe.", image: "wembley"),
          Wish(title: "I want to go on safari in Africa", description: "A safari is an overland journey to observe wild animals.", image: "safari"),
          Wish(title: "I want to visit the Louvre", description: "The Louvre museum is located inside the Louvre Palace, in the center of Paris, adjacent to the Tuileries Gardens. The Louvre is the world's most-visited museum. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo.", image: "Louvre")
        ]
    }
}
