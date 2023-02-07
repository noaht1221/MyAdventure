//
//  ViewController.swift
//  MyAdventure
//
//  Created by Noah Thompson on 2/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scenarioLabel: UILabel!
    
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    var storyBrain = StoryLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func choicePicked(_ sender: Any) {
        storyBrain.nextStory(userChoice: (sender as AnyObject).currentTitle!)
               
               updateUI()
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        
        scenarioLabel.text = storyBrain.storyTitle()
                buttonOne.setTitle(storyBrain.choiceTitle1(), for: .normal)
                buttonTwo.setTitle(storyBrain.choiceTitle2(), for: .normal)
        
        
        
    }
    
}

