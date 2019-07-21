//
//  ViewController.swift
//  Dicee
//
//  Created by Agus Quintanar on 10/6/18.
//  Copyright © 2018 Alpha-X Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0, randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImages()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1+1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2+1)")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}

