//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Erick Alcantara on 11/29/18.
//  Copyright © 2018 Erick Alcantara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0
    

    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update8BallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        update8BallImage()
    }
    
    func update8BallImage() {
        
        randomBallNumber = Int.random(in: 0...4)
        
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        update8BallImage()
    }
}

