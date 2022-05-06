//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Nathan Mora on 29/04/22.
//  Copyright © 2022 Nathan Mora. All rights reserved.
//

import Foundation
import UIKit

class SecondViewContoller: ViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      view.backgroundColor = .red
      
      let label = UILabel()
      
      label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
      view.addSubview(label)
   }
}
