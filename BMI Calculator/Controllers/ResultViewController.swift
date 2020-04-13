//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var weight: Int = 100
    var height: Float = 1.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightLabel.text = "1.5m"
        weightLabel.text = "100Kg"
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        height = (Float(sender.value) * 100).rounded() / 100
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weight = Int(sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bmi = (Float(weight) / (height * height) * 10).rounded() / 10
        print(bmi)
    }
}

