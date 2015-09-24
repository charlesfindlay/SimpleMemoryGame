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
    
    var square1 = ""
    var square2 = ""
    var square3 = ""
    var square4 = ""
    var square5 = ""
    var square6 = ""
    
    
    
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
        
        
        
    }
    
    
    
    
    

}

