//
//  LivingViewController.swift
//  Carbon Footprint
//
//  Created by Dimitris Plessas on 25/09/2022.
//

import UIKit

class LivingViewController: UIViewController {
    
    var startingScore: Double = 0.0
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    
    
    @IBAction func selectOption1(_ sender: UIButton) {
        incrementalScore = habitsArray!.myLivingHabits[0].kgCO2
        scoreKeeper = scoreKeeper + incrementalScore + startingScore
        score.text = "\(String(scoreKeeper)) kg CO2"
        
        self.performSegue(withIdentifier: "gotoEating", sender: self)

        
    }
    
    @IBAction func selectOption2(_ sender: UIButton) {
        incrementalScore = habitsArray!.myLivingHabits[1].kgCO2
        scoreKeeper = scoreKeeper + incrementalScore + startingScore
        score.text = "\(String(scoreKeeper)) kg CO2"
        
        self.performSegue(withIdentifier: "gotoEating", sender: self)
        
    }
    
    @IBAction func selectOption3(_ sender: UIButton) {
        incrementalScore = habitsArray!.myLivingHabits[2].kgCO2
        scoreKeeper = scoreKeeper + incrementalScore + startingScore
        score.text = "\(String(scoreKeeper)) kg CO2"
        
        self.performSegue(withIdentifier: "gotoEating", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        question.text = "My Living.."
        score.text = "0.0kg CO2"
        option1.setTitle(habitsArray!.myLivingHabits[0].option, for: UIControl.State.normal)
        option2.setTitle(habitsArray!.myLivingHabits[1].option, for: UIControl.State.normal)
        option3.setTitle(habitsArray!.myLivingHabits[2].option, for: UIControl.State.normal)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "gotoEating" {
            let destinationVC = segue.destination as! EatingViewController
        }
        
    }
   
}
