//
//  ViewController.swift
//  TrafficLights
//
//  Created by User on 23.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        
        redColorView.layer.cornerRadius = redColorView.layer.frame.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.layer.frame.width / 2
        greenColorView.layer.cornerRadius = greenColorView.layer.frame.width / 2
    }

    @IBAction func startButtonAction(_ sender: UIButton) {
        

        
        if redColorView.alpha < 1 && yellowColorView.alpha < 1 && greenColorView.alpha < 1 {
            sender.setTitle("Next", for: .normal)
            redColorView.alpha = 1

            return
        }
        if redColorView.alpha == 1  {
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1
            return
        }
        if yellowColorView.alpha == 1 {
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 1
            return
        }
        if greenColorView.alpha == 1 {
            greenColorView.alpha = 0.3
            redColorView.alpha = 1
            return
        }
        
    }
    
}

