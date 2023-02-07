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
    
    var scenarioLogic = ScenarioLogic();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scenarioLabel.text = scenarioLogic.getScenario(scenarioLogic.getCoordinates())
        buttonOne.setTitle(scenarioLogic.getOption(scenarioLogic.getCoordinates(), 0), for: .normal)
        buttonTwo.setTitle(scenarioLogic.getOption(scenarioLogic.getCoordinates(), 1), for: .normal)
    }
    
    @IBAction func choicePicked(_ sender: Any) {
        let userPick = (sender as AnyObject).titleLabel!.text!
        
        scenarioLogic.compareUserChoice(scenarioLogic.getCoordinates(), userPick)
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        
        scenarioLabel.text = scenarioLogic.getScenario(scenarioLogic.getCoordinates())
        
        let optionOneTitle = scenarioLogic.getOption(scenarioLogic.getCoordinates(), 0)
        let optionTwoTitle = scenarioLogic.getOption(scenarioLogic.getCoordinates(), 1)
        
        buttonOne.setTitle(optionOneTitle, for: .normal)
        buttonTwo.setTitle(optionTwoTitle, for: .normal)
        
        
        
    }
    
}

