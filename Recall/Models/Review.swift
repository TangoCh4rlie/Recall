//
//  Review.swift
//  Recall
//
//  Created by Elouan Reymond on 03/09/2024.
//

import Foundation

struct Review: Identifiable {
    var id: Int
    var title: String
    var description: String
    var cards: [Card]
    var visibility: Visibility
    
    enum Visibility {
        case publicState
        case privateState
        case friendState
    }
}

let review1 = Review(
    id: 1,
    title: "Everyday Life Skills",
    description: "A collection of cards to help you learn and practice everyday life skills.",
    cards: [
        Card(id: 1, title: "Food", question: "How do you cook a perfect boiled egg?", answer: "Bring water to a boil, then turn off the heat. Add the eggs and let them sit for 6 minutes. Then, immediately transfer them to an ice bath to stop the cooking process."),
        Card(id: 2, title: "Travel", question: "What's the best way to avoid jet lag?", answer: "Try to adjust your sleep schedule gradually in the days leading up to your trip. Once you arrive, try to stay awake until at least 9 pm local time, and then go to bed at your usual time."),
        Card(id: 3, title: "Health", question: "How often should you get a dental check-up?", answer: "The American Dental Association recommends getting a dental check-up at least twice a year.")
    ],
    visibility: .publicState
)

let review2 = Review(
    id: 2,
    title: "Language Learning",
    description: "A collection of cards to help you learn and practice a new language.",
    cards: [
        Card(id: 1, title: "Greetings", question: "How do you say 'hello' in Spanish?", answer: "Hola"),
        Card(id: 2, title: "Numbers", question: "What's the Spanish word for 'one'?", answer: "Uno"),
        Card(id: 3, title: "Food", question: "What's the Spanish word for 'apple'?", answer: "Manzana")
    ],
    visibility: .privateState
)

let review3 = Review(
    id: 3,
    title: "English Vocabulary",
    description: "A review of common English vocabulary words.",
    cards: [
        Card(id: 1, title: "Animals", question: "What's the English word for 'perro'?", answer: "Dog"),
        Card(id: 2, title: "Colors", question: "What's the English word for 'rojo'?", answer: "Red"),
        Card(id: 3, title: "Food", question: "What's the English word for 'manzana'?", answer: "Apple")
    ],
    visibility: .publicState
)

let review4 = Review(
    id: 2,
    title: "Calculus Formulas",
    description: "A review of common calculus formulas.",
    cards: [
        Card(id: 1, title: "Derivatives", question: "What's the derivative of x^2?", answer: "2x"),
        Card(id: 2, title: "Integrals", question: "What's the integral of 1/x?", answer: "ln|x| + C"),
        Card(id: 3, title: "Limits", question: "What's the limit of (x^2 - 4) / (x - 2) as x approaches 2?", answer: "4")
    ],
    visibility: .privateState
)

let review5 = Review(
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
