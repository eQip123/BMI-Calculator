//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Aidar Asanakunov on 1/8/22.
//

import Foundation
import UIKit
struct CalculateBrain {
    var bmi: BMI?
    mutating func calculateBrain(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Недостаточная масса тела", color: .systemBlue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Нормальная масса тела", color: .blue)
        } else {
            bmi = BMI(value: bmiValue, advice: "Ожирение", color: .red)
        }
    }
    func getBMIValue() -> String{
        let bmiConvert =  String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiConvert
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.red
    }
}
