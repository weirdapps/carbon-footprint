//
//  RecreationViewController.swift
//  Carbon Footprint
//
//  Created by Dimitris Plessas on 27/09/2022.
//

import UIKit

class RecreationViewController: UIViewController {
    
    var startingRecreationScore: Double?
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    
    
    @IBAction func selectOption1(_ sender: UIButton) {
        incrementalScore = habitsArray!.myRecreationHabits[0].kgCO2
        scoreKeeper = scoreKeeper + (startingRecreationScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper))kg CO2"

        self.performSegue(withIdentifier: "gotoResults", sender: self)

    }
    
    @IBAction func selectOption2(_ sender: UIButton) {
        incrementalScore = habitsArray!.myRecreationHabits[1].kgCO2
        scoreKeeper = scoreKeeper + (startingRecreationScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper))kg CO2"

        self.performSegue(withIdentifier: "gotoResults", sender: self)

    }
    
    @IBAction func selectOption3(_ sender: UIButton) {
        incrementalScore = habitsArray!.myRecreationHabits[2].kgCO2
        scoreKeeper = scoreKeeper + (startingRecreationScore ?? 0.0) + incrementalScore
        score.text = "\(String(scoreKeeper))kg CO2"

        self.performSegue(withIdentifier: "gotoResults", sender: self)


    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        question.text = "My Recreation.."
        score.text = "\(scoreKeeper)kg CO2"
        option1.setTitle(habitsArray!.myRecreationHabits[0].option, for: UIControl.State.normal)
        option2.setTitle(habitsArray!.myRecreationHabits[1].option, for: UIControl.State.normal)
        option3.setTitle(habitsArray!.myRecreationHabits[2].option, for: UIControl.State.normal)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
    }
    
}

