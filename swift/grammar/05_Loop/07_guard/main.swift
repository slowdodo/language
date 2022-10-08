func multiplyByTen(value: Int?) {
  guard let number = value,  number < 10 else {//조건식(값이 있고 10보다 작은)이 거짓일 때 실행
     print("수가 없거나 10보다 크다.")                         //거짓 : 값이 없거나 10보다 크면 
     return
  }
  print(number*10) //조건식이 참일 때 실행, 주의 : number를 여기서도 사용 가능
}
multiplyByTen(value: 3)   //30
multiplyByTen(value: nil)   
multiplyByTen(value: 20)   