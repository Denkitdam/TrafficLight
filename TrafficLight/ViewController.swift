//
//  ViewController.swift
//  TrafficLight
//
//  Created by Denis Kitaev on 17.03.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLightLabel: UIView!
    @IBOutlet var yellowLightLabel: UIView!
    @IBOutlet var greenLightLabel: UIView!
    @IBOutlet var switchButton: UIButton!
    
    private var tapCounter = 0
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.2
    
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
        tapCounter += 1
        switch tapCounter {
        case 1:
            redLightLabel.alpha = lightOn
            yellowLightLabel.alpha = lightOff
            greenLightLabel.alpha = lightOff
        case 2:
            redLightLabel.alpha = lightOff
            yellowLightLabel.alpha = lightOn
        case 3:
            yellowLightLabel.alpha = lightOff
            greenLightLabel.alpha = lightOn
            tapCounter = 0
        default:
            switchButton.setTitle("Error", for: .normal)
            
        }
        
    }
    
}

