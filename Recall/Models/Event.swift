//
//  Event.swift
//  Recall
//
//  Created by Elouan Reymond on 03/09/2024.
//

import Foundation

struct Event: Identifiable {
    var id: Int
    var name: String
    var description: String
    var date: Date
    var review: [Review]
}

let event1 = Event(
    id: 1,
    name: "Midterm Exam",
    description: "A midterm exam for the English Language course.",
    date: Date(timeIntervalSinceNow: 604800), // one week from now
    review: [
        Review(
            id: 1,
            title: "English Vocabulary",
            description: "A review of common English vocabulary words.",
            cards: [
                Card(id: 1, title: "Animals", question: "What's the English word for 'perro'?", answer: "Dog"),
                Card(id: 2, title: "Colors", question: "What's the English word for 'rojo'?", answer: "Red"),
                Card(id: 3, title: "Food", question: "What's the English word for 'manzana'?", answer: "Apple")
            ],
            visibility: .publicState
        )
    ]
)

let event2 = Event(
    id: 2,
    name: "Final Exam",
    description: "The final exam for the Calculus course.",
    date: Date(timeIntervalSinceNow: 2419200), // one month from now
    review: [
        Review(
            id: 1,
            title: "Calculus Formulas",
            description: "A review of common calculus formulas.",
            cards: [
                Card(id: 1, title: "Derivatives", question: "What's the derivative of x^2?", answer: "2x"),
                Card(id: 2, title: "Integrals", question: "What's the integral of 1/x?", answer: "ln|x| + C"),
                Card(id: 3, title: "Limits", question: "What's the limit of (x^2 - 4) / (x - 2) as x approaches 2?", answer: "4")
            ],
            visibility: .privateState
        )
    ]
)

let event3 = Event(
    id: 3,
    name: "Project Presentation",
    description: "A presentation of the final project for the Computer Science course.",
    date: Date(timeIntervalSinceNow: 3628800), // two months from now
    review: [
        Review(
            id: 1,
            title: "Project Overview",
            description: "A review of the project's goals, requirements, and design.",
            cards: [
                Card(id: 1, title: "Goals", question: "What are the goals of the project?", answer: "To create a web application that allows users to track their fitness progress."),
                Card(id: 2, title: "Requirements", question: "What are the functional requirements for the project?", answer: "The application should allow users to create and manage accounts, track their workouts, and view their progress over time."),
                Card(id: 3, title: "Design", question: "What is the overall design of the project?", answer: "The application will be built using a client-server architecture, with a React frontend and a Node.js backend. The data will be stored in a MongoDB database.")
            ],
            visibility: .friendState
        )
    ]
)
