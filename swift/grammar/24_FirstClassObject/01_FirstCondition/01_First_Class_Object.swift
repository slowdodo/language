func inchesToFeet (inches: Float) -> Float {
  return inches * 0.0833333
}
let toFeet = inchesToFeet       //함수를  자료형처럼 사용

print(inchesToFeet(inches:10)) 
print(toFeet(10))

// 1. 변수에 저장할 수 있다.