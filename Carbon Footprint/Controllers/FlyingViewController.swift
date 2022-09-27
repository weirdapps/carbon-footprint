//
//  FlyingViewController.swift
//  Carbon Footprint
//
//  Created by Dimitris Plessas on 20/09/2022.
//

import UIKit

class FlyingViewController: UIViewController {
    
    var startingFlyingScore: Double?
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    
    
    @IBAction func selectOption1(_ sender: UIButton) {
        incrementalScore = habitsArray!.myFlyingHabits[0].kgCO2
        scoreKeeper = scoreKeeper + (startingFlyingScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper)) kg CO2"
        
        self.performSegue(withIdentifier: "gotoTravel", sender: self)

    }
    
    @IBAction func selectOption2(_ sender: UIButton) {
        incrementalScore = habitsArray!.myFlyingHabits[1].kgCO2
        scoreKeeper = scoreKeeper + (startingFlyingScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper))kg CO2"

        self.performSegue(withIdentifier: "gotoTravel", sender: self)

    }
    
    @IBAction func selectOption3(_ sender: UIButton) {
        incrementalScore = habitsArray!.myFlyingHabits[2].kgCO2
        scoreKeeper = scoreKeeper + (startingFlyingScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper)) kg CO2"

        self.performSegue(withIdentifier: "gotoTravel", sender: self)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        question.text = "My Flying.."
        score.text = "\(scoreKeeper)kg CO2"
        option1.setTitle(habitsArray!.myFlyingHabits[0].option, for: UIControl.State.normal)
        option2.setTitle(habitsArray!.myFlyingHabits[1].option, for: UIControl.State.normal)
        option3.setTitle(habitsArray!.myFlyingHabits[2].option, for: UIControl.State.normal)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! TransportViewController
    }
    
}

