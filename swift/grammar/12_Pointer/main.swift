//Swift 3이후
var myValue = 10
func doubleValue (value: inout Int) -> Int {
value += value
return(value)
}
print(myValue)
print(doubleValue(value : &myValue)) //출력 값? 레포트
print(myValue)