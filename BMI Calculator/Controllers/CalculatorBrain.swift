//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Paulo Roberto on 13/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain  {
    
    var bmi: BMI?
    
    func getBMIValue ()->String {
        
        let bmi1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1Decimal
    }
    
    mutating func calculatorBMI (height: Float, weight: Float) {
        
        let bmiValue = weight / (height * height)
        let color = (abaixo : #colorLiteral(red: 0, green: 0.6150479913, blue: 0.9988169074, alpha: 1) , normal : #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) , acima : #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Abaixo do indicado!", color: color.abaixo)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Nos conformes!", color: color.normal)
        } else {
            bmi = BMI(value: bmiValue, advice: "Acima do indicado!", color: color.acima)
        }
    }
    
    func getAdvice () -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? UIColor.black
    }
}
