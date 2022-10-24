import Foundation
func calcBMI(weight : Double, height : Double) -> String{
    let bmi = weight / (height*height*0.0001) // kg/m*m
    let shortenedBmi = String(format: "%.1f", bmi)
    var body = ""
    if bmi >= 40{
        body = "3단계 비만"
    } else if bmi >= 30 && bmi < 40 {
        body = "2단계 비만"
    } else if bmi >= 25 && bmi < 30 {
        body = "1단계 비만"
    } else if bmi >= 18.5 && bmi < 25 {
        body = "정상"
    } else {
        body = "저체중"
    }
    print(#func)
    return "BMI:\(shortenedBmi), 판정:\(body)"
}
print(calcBMI(weight:62.5, height: 172.3))