func inchesToFeet (inches: Float) -> Float {
   return inches * 0.0833333
}
func inchesToYards (inches: Float) -> Float {
   return inches * 0.0277778
}
let toFeet = inchesToFeet
let toYards = inchesToYards

func outputConversion(converterFunc: (Float) -> Float, value: Float) {  //함수를 매개변수로 사용
   let result = converterFunc(value)
   print("Result = \(result)")
}
outputConversion(converterFunc:toYards, value: 10) // 야드로 변환하는  inchesToYards함수 호출
outputConversion(converterFunc:toFeet, value: 10) // 피트로 변환하는 inchesToFeet함수 호출
func decideFunction (feet: Bool) -> (Float) -> Float
{                        //매개변수형   리턴형이 함수형             
  if feet {
    return toFeet   //함수를 리턴 
  } else {
    return toYards
  }
}
