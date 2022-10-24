var x : Int?
x = 10
if let xx = x { //옵셔널 변수 x가 값(10)이 있으므로 언래핑해서 일반 상수 xx에 대입하고 if문 실행
  print(x, xx)
} 
else {
  print("nil")
}
var x1 : Int?
if let xx = x1 { //옵셔널 변수 x1이 값이 없어서 if문의 조건이 거짓이 되어 if문 실행하지 않고 else로 감
  print(xx)
} 
else {
  print("nil")
}

var x1 : Int?
if var xx = x1 { //옵셔널 변수 x1이 값이 없어서 if문의 조건이 거짓이 되어 if문 실행하지 않고 else로 감
  print(xx)
} 
else {
  print("nil")
}


