//
//  Card.swift
//  Recall
//
//  Created by Elouan Reymond on 03/09/2024.
//

import Foundation

struct Card: Identifiable {
    var id: Int
    var title: String
    var question: String
    var answer: String
}

let testCards = [
    Card(id: 1, title: "Food", question: "How do you cook a perfect boiled egg?", answer: "Bring water to a boil, then turn off the heat. Add the eggs and let them sit for 6 minutes. Then, immediately transfer them to an ice bath to stop the cooking process."),
    Card(id: 2, title: "Travel", question: "What's the best way to avoid jet lag?", answer: "Try to adjust your sleep schedule gradually in the days leading up to your trip. Once you arrive, try to stay awake until at least 9 pm local time, and then go to bed at your usual time."),
    Card(id: 3, title: "Health", question: "How often should you get a dental check-up?", answer: "The American Dental Association recommends getting a dental check-up at least twice a year."),
    Card(id: 4, title: "Education", question: "What's the best way to learn a new language?", answer: "Immerse yourself in the language as much as possible. This means watching movies, listening to music, and speaking with native speakers whenever you can."),
    Card(id: 5, title: "Home", question: "How do you clean a clogged drain?", answer: "Pour a cup of baking soda down the drain, followed by a cup of vinegar. Cover the drain with a plug and let it sit for 10 minutes. Then, flush the drain with hot water."),
    Card(id: 6, title: "Relationships", question: "What's the key to a successful long-distance relationship?", answer: "Communication is key. Make sure to talk regularly, and try to schedule video calls whenever possible. Also, be patient and understanding, as there will be times when things are difficult."),
    Card(id: 7, title: "Finance", question: "How can you save money on groceries?", answer: "Plan your meals for the week and make a shopping list. Stick to the list and avoid impulse purchases. Also, consider buying in bulk to save on packaging costs."),
    Card(id: 8, title: "Technology", question: "How do you protect your online privacy?", answer: "Use strong, unique passwords for each of your accounts. Enable two-factor authentication whenever possible. Also, be cautious about sharing personal information online."),
    Card(id: 9, title: "Leisure", question: "What's the best way to relax after a long day?", answer: "Try taking a warm bath, reading a book, or listening to some soothing music. You could also try practicing mindfulness techniques, such as meditation or yoga."),
    Card(id: 10, title: "Career", question: "How can you improve your public speaking skills?", answer: "Practice speaking in front of a mirror or with a friend. Join a public speaking group or take a course. Also, try to speak slowly and clearly, and make eye contact with your audience."),
]
