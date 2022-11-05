class Man{
  var age : Int = 1
  var weight : Double = 3.5
  func display(){
   print("나이=\(age), 몸무게=\(weight)")
  }
  init(yourAge: Int, yourWeight : Double){
	age = yourAge
	weight = yourWeight
  } //designated initializer
}
//var kim : Man = Man()  //오류
//init()을 하나라도 직접 만들면 default initializer는 사라짐
var kim : Man = Man(yourAge:10, yourWeight:20.5) 
kim.display()

class Man{
  var age : Int
  var weight : Double
  func display(){
   print("나이=\(age), 몸무게=\(weight)")
  }
  init(age: Int, weight : Double){
   self.age = age //프로퍼티 = 매개변수
   self.weight = weight
  }
}
var kim : Man = Man(age:10, weight:20.5)
kim.display()