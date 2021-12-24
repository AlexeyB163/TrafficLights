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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.layer.cornerRadius = 40
    }

    
    @IBAction func startButtonAction(_ sender: UIButton) {
        if redColorView.alpha < 1 && yellowColorView.alpha < 1 && greenColorView.alpha < 1 {
            redColorView.alpha = 1
            sender.setTitle("Next", for: .normal)
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

