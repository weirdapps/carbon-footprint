//
//  TransportViewController.swift
//  Carbon Footprint
//
//  Created by Dimitris Plessas on 27/09/2022.
//

import UIKit

class TransportViewController: UIViewController {
    
    var startingTravelScore: Double?
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    
    
    @IBAction func selectOption1(_ sender: UIButton) {
        incrementalScore = habitsArray!.myTravelHabits[0].kgCO2
        scoreKeeper = scoreKeeper + (startingTravelScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper))kg CO2"
        
        self.performSegue(withIdentifier: "gotoShopping", sender: self)

    }
    
    @IBAction func selectOption2(_ sender: UIButton) {
        incrementalScore = habitsArray!.myTravelHabits[1].kgCO2
        scoreKeeper = scoreKeeper + (startingTravelScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper))kg CO2"

        self.performSegue(withIdentifier: "gotoShopping", sender: self)

    }
    
    @IBAction func selectOption3(_ sender: UIButton) {
        incrementalScore = habitsArray!.myTravelHabits[2].kgCO2
        scoreKeeper = scoreKeeper + (startingTravelScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper))kg CO2"
        
        self.performSegue(withIdentifier: "gotoShopping", sender: self)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        question.text = "My Travel.."
        score.text = "\(scoreKeeper)kg CO2"
        option1.setTitle(habitsArray!.myTravelHabits[0].option, for: UIControl.State.normal)
        option2.setTitle(habitsArray!.myTravelHabits[1].option, for: UIControl.State.normal)
        option3.setTitle(habitsArray!.myTravelHabits[2].option, for: UIControl.State.normal)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ShoppingViewController
    }
    
}

