class Man{
  var age : Int = 1
  var weight : Double = 3.5
  func display(){
    print("나이=\(age), 몸무게=\(weight)")
  }
  init(age: Int){
    self.age = age
  }
  init(age: Int, weight : Double){  
    self.age = age
    self.weight = weight
  }
}

class Student : Man {
  var name : String = "김소프"
  override func display() {
    print("이름=\(name), 나이=\(age), 몸무게=\(weight)")
  }
  init(age: Int, weight : Double, name : String){
    super.init(age:age, weight:weight)
    self.name = name
  }
}
var lee : Student = Student(age:20,weight:65.2,name:"홍길동")  
lee.display()

