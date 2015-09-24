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
    }
    
    func assignValueToTile() {
        tiles["tile1"] = "A"
        tiles["tile2"] = "C"
        tiles["tile3"] = "A"
        tiles["tile4"] = "B"
        tiles["tile5"] = "B"
        tiles["tile6"] = "C"
        
        
        var test = tiles["tile1"]
        print(test)
    }
    
    func flipTile(chosenTile: String) {
        let choiceValue = tiles[chosenTile]!
        var makeButton: UIButton  = UIButton(chosenTile)
        UIButton(chosenTile).setTitle("\(choiceValue)",forState: .Normal)
    }
    
//   func compareTiles() {
//        if tile1.setTitle(square1,forState: .Normal) == tile3.setTitle(square3,forState: .Normal) {
//           print("Yes")
//      }
//    }
    
    @IBAction func pressedTile1(sender: AnyObject) {
        flipTile("tile1")
        
    }
    
    
    
    

}

