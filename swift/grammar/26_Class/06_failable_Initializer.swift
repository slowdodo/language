class Man{
  var age : Int 
  var weight : Double 
  func display(){
    print("나이=\(age), 몸무게=\(weight)")
  }
  init?(age: Int, weight : Double){
    if age <= 0 {
      return nil
    }
    else {
     self.age = age
    }
    if weight >= 0 {
      self.weight = weight
    }
    else{
      return nil
    }
  } 
}
var kim : Man? = Man(age:1, weight:3.5) 
//1-1.옵셔널 형으로 선언
if let kim1 = kim {  //1-2.옵셔널 바인딩
  kim1.display()
}

//2.인스턴스 생성과 동시에 옵셔널 바인딩
if let kim2 = Man(age:2, weight:5.5) {
kim2.display()
}

//3.인스턴스 생성하면서 바로 강제 언래핑
var kim3 : Man = Man(age:3, weight:7.5)! 
kim3.display()

//4.옵셔널 인스턴스를 사용시 강제 언래핑
var kim4 : Man? = Man(age:4, weight:10.5) 
kim4!.display()

// 몸무게가 음수면 nil 반환
var kim5 : Man? = Man(age:4, weight:-1) 
kim5!.display()