//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jason.Allshorn on 2020/11/16.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Skinny", color: #colorLiteral(red: 0.3832339048, green: 0.8040516376, blue: 0.9949302077, alpha: 1))
        case 18.5..<24.9:
            bmi = BMI(value: bmiValue, advice: "Morms", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        case 24.9...:
            bmi = BMI(value: bmiValue, advice: "Fatty", color: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        default:
            bmi = BMI(value: bmiValue, advice: "Okay", color: .red)
        }
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
        
       
}
