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
// 첫번째 조건) 변수에 저장할 수 있다.
                      
func upDown(Fun: (Int) -> Int, value: Int) {  
   let result = Fun(value)
   print("결과 = \(result)")
}

upDown(Fun:toUp, value: 10)   //toUp(10)
upDown(Fun:toDown, value: 10) //toDown(10)

// 두번째 조건) 매개변수로 전달할수있다.