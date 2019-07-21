//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Agus Quintanar on 10/7/18.
//  Copyright © 2018 Alpha-X Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerBall: UILabel!
    var randomIndexBall : Int = 0
    let responsesBall = ["Yes","No","Maybe","No idea","Ask later"]
    override func viewDidLoad() {
        super.viewDidLoad()
        answerBall.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButton(_ sender: UIButton) {
        generateRandomAnwer()
    }
    func generateRandomAnwer(){
        randomIndexBall = Int(arc4random_uniform(5))
        answerBall.text = responsesBall[randomIndexBall]
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateRandomAnwer()
    }
}

