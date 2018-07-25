//
//  FuelConsumptionViewController.swift
//  FuelConsumption
//
//  Created by Sam Dindyal on 2018-07-24.
//  Copyright © 2018 Sam Dindyal. All rights reserved.
//

import UIKit

class FuelConsumptionViewController: UIViewController {
    
    @IBOutlet var distanceField: UITextField!
    @IBOutlet var fuelField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        if calculate(),
            result != Float.nan {
            resultLabel.text = "\(result)"
        } else {
            resultLabel.text = "???"
        }
    }
    
    var distanceTravelled:Float = 0.0
    var fuelConsumed:Float      = 0.0
    var result: Float           = 0.0
    
    func fetchValues() -> Bool {
        
        if let distanceTravelled = Float(distanceField.text!),
            let fuelConsumed = Float(fuelField.text!) {
            
            self.distanceTravelled = distanceTravelled
            self.fuelConsumed = fuelConsumed
            return true
        }
        
        
        return false
    }
    
    func calculate() -> Bool {
        
        if fetchValues() {
            self.result = 100 * self.fuelConsumed / self.distanceTravelled
            return true
        }
        
        return false
    }
}
