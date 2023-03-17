//
//  ViewController.swift
//  TrafficLight
//
//  Created by Denis Kitaev on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightLabel: UIView!
    @IBOutlet var yellowLightLabel: UIView!
    @IBOutlet var greenLightLabel: UIView!
    @IBOutlet var switchButton: UIButton!
    
    private var tapCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightLabel.layer.cornerRadius = 50
        yellowLightLabel.layer.cornerRadius = 50
        greenLightLabel.layer.cornerRadius = 50
        switchButton.layer.cornerRadius = 20
        
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonWasTapped() {
        switchButton.setTitle("Next", for: .normal)
        tapCount += 1
        switch tapCount {
        case 1:
            redLightLabel.alpha = 10
            yellowLightLabel.alpha = 0
            greenLightLabel.alpha = 0
        case 2:
            redLightLabel.alpha = 0
            yellowLightLabel.alpha = 10
            greenLightLabel.alpha = 0
        case 3:
            redLightLabel.alpha = 0
            yellowLightLabel.alpha = 0
            greenLightLabel.alpha = 10
        default:
            tapCount = 0
        }
        
    }
    
}

