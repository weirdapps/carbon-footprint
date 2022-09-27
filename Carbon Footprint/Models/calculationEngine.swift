//
//  calculationEngine.swift
//  Carbon Footprint
//
//  Created by Dimitris Plessas on 21/09/2022.
//

import Foundation

var scoreKeeper = 0.0
var incrementalScore = 0.0

let jsonFileData = readLocalFile(forName: "data")
let habitsArray = try? JSONDecoder().decode(habitsArrayModel.self, from: jsonFileData!)

struct habitsArrayModel: Codable {
    let myFlyingHabits, myEatingHabits, myLivingHabits, myTravelHabits, myShoppingHabits, myRecreationHabits: [MyHabit]
    enum CodingKeys: String, CodingKey {
        case myFlyingHabits = "My Flying Habits"
        case myEatingHabits = "My Eating Habits"
        case myLivingHabits = "My Living Habits"
        case myTravelHabits = "My Travel Habits"
        case myShoppingHabits = "My Shopping Habits"
        case myRecreationHabits = "My Recreation Habits"
    }
}

struct MyHabit: Codable {
    let option: String
    let kgCO2: Double
}

var questionText = habitsArrayModel.CodingKeys.myLivingHabits.rawValue

private func readLocalFile(forName name: String) -> Data? {
    do {
        if let bundlePath = Bundle.main.path(forResource: name, ofType: "json"),
           let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
            return jsonData
        }
    } catch {
        print(error)
    }
    return nil
}
