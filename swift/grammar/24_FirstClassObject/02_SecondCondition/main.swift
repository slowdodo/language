func inchesToFeet (inches: Float) -> Float {
  return inches * 0.0833333
}
let toFeet = inchesToFeet

(Float) -> Float               // (매개변수형) -> 리턴형
(Int, Double) -> String    // (매개변수형, 매개변수형) -> 리턴형

func outputConversion(converterFunc: (Float) -> Float, value: Float) {//함수를 매개변수로 사용
   let result = converterFunc(value)  //toFeet(10)
   print("Result = \(result)")
}
outputConversion(converterFunc:toFeet, value: 10) // 피트로 변환하는 inchesToFeet함수 호출

// 2. 매개변수로 전달할 수 있다.