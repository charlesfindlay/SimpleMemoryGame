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
    var guess1Button: UIButton?
    var guess2Button: UIButton?
    var timer = NSTimer()

    
    
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
    
    
    func flipTile(chosenTile: String, sender: UIButton) {
        count++
        sender.enabled = false
        let choiceValue = tiles[chosenTile]!
        print(choiceValue)
        if count == 1 {
            guess1 = choiceValue
            //guess1Button = sender
            sender.setTitle(choiceValue, forState: .Normal)
            guess1Button = sender
            
        } else {
            count = 0
            guess2 = choiceValue
            guess2Button = sender
            sender.setTitle(choiceValue, forState: .Normal)
            timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: Selector("checkForMatch"), userInfo: nil, repeats: false)
            
        }
    }
    
    func checkForMatch() {
        timer.invalidate()
        print("Your guesses are \(guess1) and \(guess2)")
        if guess1 == guess2 {
            print("You found a match")
            guess1Button?.hidden = true
            guess2Button?.hidden = true
            
        } else {
            print("No match")
            guess1Button?.setTitle("?", forState: .Normal)
            guess2Button?.setTitle("?", forState: .Normal)
            guess1Button?.enabled = true
            guess2Button?.enabled = true
        }
    }
    
    
    
    @IBAction func pressedTile1(sender: UIButton) {
        flipTile("tile1", sender: sender)
    }
    
    @IBAction func pressedTile2(sender: UIButton) {
        flipTile("tile2", sender: sender)
    }
    
    @IBAction func pressedTile3(sender: UIButton) {
        flipTile("tile3", sender: sender)
    }
    
    @IBAction func pressedTile4(sender: UIButton) {
        flipTile("tile4", sender: sender)
    }
    
    @IBAction func pressedTile5(sender: UIButton) {
        flipTile("tile5", sender: sender)
    }
    
    @IBAction func pressedTile6(sender: UIButton) {
        flipTile("tile16", sender: sender)
    }
    

}

