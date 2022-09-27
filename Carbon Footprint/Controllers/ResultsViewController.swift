//
//  ResultsViewController.swift
//  Carbon Footprint
//
//  Created by Dimitris Plessas on 27/09/2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var resultsScore: Double?
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var restart: UIButton!
    
    
    @IBAction func restart(_ sender: UIButton) {
        self.performSegue(withIdentifier: "gotoLiving", sender: self)
        scoreKeeper = 0.0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        score.text = "\(scoreKeeper)kg CO2"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! LivingViewController
    }
    
}

