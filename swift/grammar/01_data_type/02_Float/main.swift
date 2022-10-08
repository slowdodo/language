var number1 : Float16 = 1.32132133213423154231432133213213123123213123
var number2 : Float32 = 2.42142132132132142314231432133213213123123213123
var number3 : Float64 = 3.321312323213132133214321413232133213213123123213123
var number4 : Float80 = 4.3213321321312312321312332133213213123123213123

print("value:\(number1) size: \(MemoryLayout.size(ofValue: number1))");
print("value:\(number2) size: \(MemoryLayout.size(ofValue: number2))");
print("value:\(number3) size: \(MemoryLayout.size(ofValue: number3))");
print("value:\(number4) size: \(MemoryLayout.size(ofValue: number4))");