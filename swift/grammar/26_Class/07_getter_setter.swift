class Man{
  var age : Int = 1  // stored property
  var weight : Double = 3.5  // stored property
  var manAge : Int{ //메서드 같지만 computed property임
//Computed Property는 setter가 없으면은 생략이 가능하다.
  get{ return age-1}
  set{ age = newValue + 1}
  }
  func display(){
   print("나이=\(age), 몸무게=\(weight)")
  }
  func display(age: Int){
   print("나이=\(age), 몸무게=\(weight)")
  }
  init(age: Int, weight : Double){
   self.age = age
   self.weight = weight
  }
}
var kim : Man = Man(age:10, weight:20.5)
kim.display()
kim.display(age:33)
print(kim.manAge)
print(kim.age)
kim.manAge = 10
print(kim.age)