func printName(firstName:String, lastName:String?){
  // if let
  if let lName = lastName { // lastName이 nil이 아니면
  print(lName,firstName)
}
  else {
  print("성이 없네요!")
}
  // guard let
  guard let lName = lastName else { // lastName이 nil이면
  print("성이 없네요!")
  return // early exit
}
  print(lName,firstName) // guar let의 특징은 guard let 밖에서도 사용할 수 있다.
}
// printName(lName,firstName)  <- 함수를 벗어나면은 guard let 밖이라도 사용이 안된다. 

printName(firstName: "길동", lastName:"홍")
printName(firstName: "길동", lastName:nil)