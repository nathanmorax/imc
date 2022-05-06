//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nathan Mora on 01/05/22.
//  Copyright © 2022 Nathan Mora. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorbrainBrain {
   
   var bmi: BMI?
   
   func getAdvice() -> String {
      return bmi?.advice ?? "Sin consejo"
   }
   
   func getColor() -> UIColor {
      return bmi?.color ?? UIColor.white
   }
   
   
   func getBMIValue() -> String{
      let bmiResult = String(format: "%.1f", bmi?.value ?? 0.0 )
      return bmiResult
   }
   
   mutating func calculateBMI(height: Float , weight: Float) {
      let bmiValue  = weight / (height)
      
      if bmiValue < 18.5 {
         bmi = BMI(value: bmiValue, advice: "¡Bajo de peso!", color: UIColor.blue)
      } else if bmiValue < 24.9 {
         bmi = BMI(value: bmiValue, advice: "¡Peso normal!", color: UIColor.green)
      } else {
         bmi = BMI(value: bmiValue, advice: "¡Sobre peso!", color: UIColor.red)
      }
      
   }
   
}
