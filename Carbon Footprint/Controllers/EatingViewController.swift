//
//  EatingViewController.swift
//  Carbon Footprint
//
//  Created by Dimitris Plessas on 20/09/2022.
//

import UIKit

class EatingViewController: UIViewController {
    
    var startingEatingScore: Double?
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    
    
    @IBAction func selectOption1(_ sender: UIButton) {
        incrementalScore = habitsArray!.myEatingHabits[0].kgCO2
        scoreKeeper = scoreKeeper + (startingEatingScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper)) kg CO2"
        
        self.performSegue(withIdentifier: "gotoFlying", sender: self)

    }
    
    @IBAction func selectOption2(_ sender: UIButton) {
        incrementalScore = habitsArray!.myEatingHabits[1].kgCO2
        scoreKeeper = scoreKeeper + (startingEatingScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper)) kg CO2"
        
        self.performSegue(withIdentifier: "gotoFlying", sender: self)

    }
    
    @IBAction func selectOption3(_ sender: UIButton) {
        incrementalScore = habitsArray!.myEatingHabits[2].kgCO2
        scoreKeeper = scoreKeeper + (startingEatingScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper)) kg CO2"
        
        self.performSegue(withIdentifier: "gotoFlying", sender: self)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        question.text = "My Eating.."
        score.text = "\(scoreKeeper)kg CO2"
        option1.setTitle(habitsArray!.myEatingHabits[0].option, for: UIControl.State.normal)
        option2.setTitle(habitsArray!.myEatingHabits[1].option, for: UIControl.State.normal)
        option3.setTitle(habitsArray!.myEatingHabits[2].option, for: UIControl.State.normal)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoFlying" {
            let destinationVC = segue.destination as! FlyingViewController
        }
    }
    
}

