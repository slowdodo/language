//Swift 3이후
var myValue = 10
func doubleValue (value: inout Int) -> Int {
value += value
return(value)
}
print(myValue)//10
print(doubleValue(value : &myValue)) //20
print(myValue)/20