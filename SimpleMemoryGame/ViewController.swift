//
//  ViewController.swift
//  SimpleMemoryGame
//
//  Created by Student on 9/24/15.
//  Copyright © 2015 Charles Findlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tile1: UIButton!
    @IBOutlet weak var tile2: UIButton!
    @IBOutlet weak var tile3: UIButton!
    @IBOutlet weak var tile4: UIButton!
    @IBOutlet weak var tile5: UIButton!
    @IBOutlet weak var tile6: UIButton!
    
    
    
    var count = 0
    var guess1 = ""
    var guess2 = ""
    
    var tiles = [String: String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        startGame()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func startGame() {
        assignValueToTile()
        count = 0
    }
    
    func assignValueToTile() {
        tiles["tile1"] = "A"
        tiles["tile2"] = "C"
        tiles["tile3"] = "A"
        tiles["tile4"] = "B"
        tiles["tile5"] = "B"
        tiles["tile6"] = "C"
        
    }
    
    
    func flipTile(chosenTile: String) {
        count++
        let choiceValue = tiles[chosenTile]!
        print(choiceValue)
        if count == 1 {
            guess1 = choiceValue
            print("Guess 1 = \(guess1)")
        } else {
            count = 0
            guess2 = choiceValue
            print("Guess 2 = \(guess2)")
            checkForMatch()
        }
    }
    
    func checkForMatch() {
        print("Your guesses are \(guess1) and \(guess2)")
        if guess1 == guess2 {
            print("You found a match")
        } else {
            print("No match")
        }
    }
    
    
    
    @IBAction func pressedTile1(sender: AnyObject) {
        flipTile("tile1")
        sender.setTitle(tiles["tile1"], forState: .Normal)
    }
    
    
    
    

}

