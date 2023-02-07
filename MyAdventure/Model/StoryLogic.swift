//
//  ScenarioLogic.swift
//  MyAdventure
//
//  Created by Noah Thompson on 2/6/23.
//

import Foundation
struct StoryLogic {
    
    let stories = [
        Story(
            title: "You're walking down a trail in the woods when a large black bear blocks the path! What do you do? Fight the bear, or run into the woods off the trail?!",
            choice1: "Fight!", choice1Destination: 2,
            choice2: "Run!", choice2Destination: 1
        ),
        Story(
            title: "Now off the trail you see a hiker hanging off a cliff up ahead. You see a rope in the distance but may not have time to get it before he slips. Do you ignore him and face the bear chasing you?!",
            choice1: "Ignore him", choice1Destination: 2,
            choice2: "Get the rope", choice2Destination: 3
        ),
        Story(
            title: "You manage to defeat the bear but now wildlife protection is after you! Do you stop and try to plea your case or book it?",
            choice1: "Plead your case", choice1Destination: 5,
            choice2: "Book it!", choice2Destination: 4
        ),
        Story(
            title: "You are able to reach the rope in time and save the hiker who turns out to be Mr. Beast in disguise! He gifts you with a house and 1 million dollars!!!",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "The bear's children have tracked you down seeking revenge.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "You are arrested for harming wildlife and spend the rest of your life in jail.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
        
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = stories[storyNumber].choice1Destination
        } else {
            storyNumber = stories[storyNumber].choice2Destination
        }
        
    }
    
    func storyTitle() -> String {
        
        return stories[storyNumber].title
        
    }
    
    func choiceTitle1() -> String {
        
        return stories[storyNumber].choice1
        
    }
    
    func choiceTitle2() -> String {
        
        return stories[storyNumber].choice2
        
    }
    
}
