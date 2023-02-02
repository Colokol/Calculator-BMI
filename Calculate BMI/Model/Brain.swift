//
//  Brain.swift
//  Calculate BMI
//
//  Created by user on 1.02.23.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi:BMI?
    
    mutating func BMIValue(weight:Float,hight:Float) {
        let bmiValueStruct = weight / pow(hight, 2)
        switch bmiValueStruct {
        case 0.0..<18.5 :   bmi = BMI(value: bmiValueStruct, backgraund: UIColor.red, propety: "Пора начать есть");
        case 18.5..<25.0 :   bmi = BMI(value: bmiValueStruct, backgraund: UIColor.green, propety: "Все нормально");
        case 25.0... :   bmi = BMI(value: bmiValueStruct, backgraund: UIColor.orange, propety: "Попей кефирчика");
        default:   bmi = BMI(value: bmiValueStruct, backgraund: .black, propety: "HIII")
        }
    }
    
    func getPropety () -> String {
       return bmi?.propety ?? "no advice"
    }
    
    func getBackground ()  -> UIColor {
        return  bmi?.backgraund ?? UIColor.black
    }
    
    func getBMIValue () -> String {
        let bmiToString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToString
        /*   if let bmiValueString = bmi {
         return String(format: "%.1f", bmiValueString)
         }else {
         return "0.0"
         }
         */
    }
}




