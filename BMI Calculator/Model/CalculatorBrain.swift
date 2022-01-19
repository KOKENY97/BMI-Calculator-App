
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pizza!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pizza!", color: .red)
        }
        
        
    }

    func getBMIValue() -> String {
        
        let bmiToDecimal = String(format: "%.2f", bmi?.value ?? 0.0)
        return bmiToDecimal
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advices this time"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
        
    }
    
}
