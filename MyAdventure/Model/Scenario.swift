//
//  Scenario.swift
//  MyAdventure
//
//  Created by Noah Thompson on 2/6/23.
//

import Foundation

struct Scenario {
    init(_ choice: String, _ first: String, _ second: String, _ pic: String) {
        scenario = choice
        first_option = first
        second_option = second
        image = pic
    }
    
    var scenario : String
    var first_option : String
    var second_option : String
    var image : String
}
