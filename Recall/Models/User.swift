//
//  User.swift
//  Recall
//
//  Created by Elouan Reymond on 03/09/2024.
//

import Foundation

struct User: Identifiable {
    var id: String
    var username: String
    var profilePicture: String
    var friends: [User]
    var deadlines: [Event]
}

let user1 = User(
    id: "1",
    username: "johndoe",
    profilePicture: "https://example.com/johndoe.jpg",
    friends: [],
    deadlines: [event1, event2]
)

let user2 = User(
    id: "2",
    username: "janedoe",
    profilePicture: "https://example.com/janedoe.jpg",
    friends: [user1],
    deadlines: [event2, event3]
)

let user3 = User(
    id: "3",
    username: "bobsmith",
    profilePicture: "https://example.com/bobsmith.jpg",
    friends: [user1, user2],
    deadlines: [event1, event3]
)

