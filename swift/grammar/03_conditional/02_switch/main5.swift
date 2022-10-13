import Foundation
func calcBMI (weight : Double, height : Double) {  //Void형
 let bmi = weight / (height*height*0.0001) // kg/m*m 
 let shortenedBmi = String(format: "%.1f", bmi) 
 switch bmi {
   case 0.0..<18.5:
   print("BMI:\(shortenedBmi),판정:저체중")
   case 18.5..<25.0 :
   print("BMI:\(shortenedBmi),판정:정상")
   case 25.0..<30.0 :
   print("BMI:\(shortenedBmi),판정:1단계 비만")
   case 30.0..<40.0 :
   print("BMI:\(shortenedBmi),판정:2단계 비만")
   default :
   print("BMI:\(shortenedBmi),판정:3단계 비만") 
 }
}
calcBMI(weight:62.5, height: 172.3)
