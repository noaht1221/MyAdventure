//
//  ScenarioLogic.swift
//  MyAdventure
//
//  Created by Noah Thompson on 2/6/23.
//

import Foundation
struct ScenarioLogic {
    let layers = 3
    var currentChoice : String = "0,0"
    let scenarios = [
        "0,0" : Scenario(
            "You're walking down a trail in the woods when a large black bear blocks the path! What do you do? Fight the bear, or run into the woods off the trail?!",
            "Fight!",
            "Run for it!!",
            "0,0"
        ),
            "1,0" : Scenario(
            "You and your dog manage to defeat the bear and continue down the trail when you come to a fork in the path. Go left or right?",
            "Left",
            "Right",
            "1-0"
            ),
            "2,0" : Scenario(
            "There's a hiker hanging off a cliff up ahead. You see a rope in the distance but may not have time to get it before he slips. What do you do?!",
            "Ignore him",
            "Get the rope",
            "2-0"
            ),
            "3,0" : Scenario(
            "Karma catches up to you instantly and you slip off of the same cliff.",
            "The",
            "End",
            "3-0"
        ),
        "3,1" : Scenario(
            "You are able to reach the rope in time and save the hiker who turns out to be Mr. Beast in disguise! He gifts you with a house and 1 million dollars!!!",
            "The",
            "End",
            "3-1"
        ),
        "2,1" : Scenario(
            "A park ranger is coming after you for defeating the bear. Do you stop and try to plea your case or book it? ",
            "Plea Your Case",
            "Book It",
            "2-1"
        ),
        "3,2" : Scenario(
            "You are arrested for harming wildlife and spend the rest of your life in jail.",
            "The",
            "End",
            "3-2"
        ),
        "3,3" : Scenario(
            "The bear's children have tracked you down seeking revenge.",
            "The",
            "End",
            "3-3"
        ),
        "1,1" : Scenario(
            "The bear is chasing you deeper into the woods. There's are dark cave you can hide in.",
            "Hide in the cave",
            "Keep Running!",
            "1-1"
        ),
        "2,2" : Scenario(
            "The cave is much larger than it appeared from the outside. Do you contiue you deeper?",
            "Go deeper",
            "Leave the cave",
            "2-2"
        ),
        "3,4" : Scenario(
            "This is where the bear family lives and you got there just in time for dinner.",
            "The",
            "End",
            "3-4"
        ),
        "3,5" : Scenario(
            "The bear is waiting for you at the exit.",
            "The",
            "End",
            "3-5"
        ),
        "2,3" : Scenario(
            "You finally reach a river. Do you swim for it or take your chances with the bear?",
            "Swim",
            "Take on bear",
            "2-3"
        ),
        "3,6" : Scenario(
            "You are swallowed by a giant lake monster.",
            "The",
            "End",
            "3-6"
        ),
        "3,7" : Scenario(
            "You confront the bear and it turns out he was just returning your wallet that you dropped on the trail.",
            "The",
            "End",
            "3-7"
        )
    ]
    
    mutating func compareUserChoice(_ key: String, _ choice: String) {
            var newChoice : String = ""
            let x : Int? = Int(currentChoice.components(separatedBy: ",")[0])
            let y : Int? = Int(currentChoice.components(separatedBy: ",")[1])
            var newX : Int
            var newY : Int
            
            if choice == scenarios[key]?.first_option {
                newX = x! + 1
                newY = y! * 2
                newChoice = String(newX) + "," + String(newY)
            } else {
                newX = x! + 1
                newY = (y! * 2) + 1
                newChoice = String(newX) + "," + String(newY)
            }
            
            if newX > layers{
                currentChoice = "0,0"
            } else {
                currentChoice = newChoice
            }
        }
    func getScenario(_ key: String) -> String? {
           guard let scenario = scenarios[key]?.scenario else { return ""}
           return scenario
       }
    
    func getOption(_ key: String, _ option: Int) -> String? {
            guard let retOption = option == 0 ? scenarios[key]?.first_option : scenarios[key]?.second_option else { return "" }
            return retOption
        }
    func getCoordinates() -> String {
           return currentChoice
       }
}
