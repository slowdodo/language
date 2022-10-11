import Foundation
func calcBMI(weight : Double, height : Double) -> String {
let bmi = weight / (height*height*0.0001) // kg/m*m
let shortenedBmi = String(format: "%.1f", bmi)
var body = ""
switch bmi {
case 0.0..<18.5:
body = "저체중"
case 18.5..<25.0:
body = "정상"
case 25.0..<30.0:
body = "1단계 비만"
case 30.0..<40.0 :
body = "2단계 비만"
default :
body = "3단계 비만"
}
return "BMI:\(shortenedBmi), 판정:\(body)"
}
print(calcBMI(weight:60.0, height: 170.0))