import UIKit

func calculateBMI (weight: Double, height: Double) -> String {
    var bmi: Double, bodyCondition: String
    bmi = weight/pow(height, 2)
    if bmi > 25 {
        bodyCondition = "Your BMI is \(bmi), you are overweight"
    }
    else if bmi >= 18.5 && bmi <= 25 {
        bodyCondition = "Your BMI is \(bmi), you are in your normal weight"
    }
    else {
        bodyCondition = "Your BMI is \(bmi), you are underweight"
    }
    return bodyCondition
}

print(calculateBMI(weight: 75, height: 1.90))

