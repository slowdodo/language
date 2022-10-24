func up(num: Int) -> Int {
return num + 1
}
func down(num: Int) -> Int {
return num - 1
}
let toUp = up
print(up(num:10))
print(toUp(10))
let toDown = down
func upDown(Fun: (Int) -> Int, value: Int) {
let result = Fun(value)
print("결과 = \(result)")
}
upDown(Fun:toUp, value: 10) //toUp(10)
func decideFun(x: Bool) -> (Int) -> Int {
//매개변수형 리턴형이 함수형
if x {
return toUp
} else {
return toDown
}
}
let r = decideFun(x:true) // let r = toUp
print(type(of:r)) //(Int) -> Int
print(r(10)) // toUp(10)

// swift의 함수는 1급 객체이다.
// 1급 객체(first class object) 또는 1급 시민(first class citizen)
// 다음 조건을 충족하는 객체를 1급 객체라고 한다.
// 1) 변수에 저장할 수 있다.
// 2) 매개변수로 전달할 수 있다.
// 3) 리턴값으로 사용할 수 있다.