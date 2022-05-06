//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Nathan Mora on 01/05/22.
//  Copyright © 2019 Nathan Mora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   var calculatorBrain = CalculatorbrainBrain()
   
   @IBOutlet var heightValue: UILabel!
   @IBOutlet var weightValue: UILabel!
   
   @IBOutlet var heightSlider: UISlider!
   @IBOutlet var weightSlider: UISlider!
   
   
   override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   @IBAction func heightSliderChange(_ sender: UISlider) {
      let height = String(format: "%.2f", sender.value)
      heightValue.text = "\(height)m"
   }
   
   @IBAction func weightSliderChange(_ sender: UISlider) {
      let weight = String(format: "%0.f", sender.value)
      weightValue.text = "\(weight)Kg"

   }
   @IBAction func calculatePressed(_ sender: UIButton) {
      
      let height = heightSlider.value
      let weight = weightSlider.value
     
      calculatorBrain.calculateBMI(height: height, weight: weight)
      self.performSegue(withIdentifier: "goToResult", sender: self)
      
      
   }
   
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
      if (segue.identifier == "goToResult") {
         let destinationVC = segue.destination as! ResultViewController
         destinationVC.bmiValue = calculatorBrain.getBMIValue()
         destinationVC.bmiAdvice = calculatorBrain.getAdvice()
         destinationVC.color = calculatorBrain.getColor()

         
      }
   }
}

