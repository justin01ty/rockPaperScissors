//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by Justin Gist on 9/8/19.
//  Copyright © 2019 Jus Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var playAgain = false
    
    @IBOutlet weak var winner: UILabel!
    @IBOutlet weak var rockChoice: UIButton!
    @IBAction func rockPressed(_ sender: Any) {
        if playAgain == true
        {
            playAgain = false
            
            let computer = Random()
            
            if computer == "Rock"
            {
                winner.text = "Its a draw!"
            }
            else if computer == "Paper"
            {
                winner.text = "You lose :("
            }
            else
            {
                winner.text = "You win! :)"
            }
        }
    }
    
    @IBOutlet weak var paperChoice: UIButton!
    @IBAction func paperPressed(_ sender: Any) {
        if playAgain == true
        {
            playAgain = false
            
            let computer = Random()
            
            if computer == "Paper"
            {
                winner.text = "Its a draw!"
            }
            else if computer == "Scissors"
            {
                winner.text = "You win! :)"
            }
            else
            {
                winner.text = "You lose :("
            }
        }
    }
    
    @IBOutlet weak var scissorsChoice: UIButton!
    @IBAction func scissorsPressed(_ sender: Any) {
    }
    
    @IBOutlet weak var computerChoice: UILabel!
    
    func Random() -> String? {
        let computer = ["Rock", "Paper", "Scissor"]
        return computer.randomElement()
    }
    
    @IBAction func playAgainPressed(_ sender: Any) {
        playAgain = false
    }
}

