// swift는 char에 아스키값을 부여해도 선언조차 안되는게  막은 엄격한 언어다.
// 버퍼도 오버플로우 되면은 에러가 뜨게 만들었다
var a : Character = "A"
// var b : Character = "ABC" <- cant
// var c : Character = 65 <- cant
// var b = "\u{0058}" <- String 

print("value:\(a) size: \(MemoryLayout.size(ofValue: a))");