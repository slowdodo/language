class Man{
  var age : Int 
  var weight : Double 
// init이라는 생성자가 있어서 변수의 값이 없어도 가능
//   var age : Int  = 1
//   var weight : Double = 3.5
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