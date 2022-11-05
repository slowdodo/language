protocol Weapon{
    var name: String? { get set}
    var damage: Int? { get set}
    var metadata : String  { get set}
  
    func attack()
    func edit(name: String, damage: Int, metadata: String)
    func show()
}
class Sword : Weapon{
  var name: String?
  var damage: Int?
  var metadata : String 
  init(){
    self.name = "잡템"
    self.damage = 1
    self.metadata = "잡템"
  }
  
  func attack() {
    if name != nil, damage != nil{
      print("\(name!)으로 공격: \(damage!)")
    }
    else{
      print("nil")
    }
  }

  func edit(name: String, damage: Int, metadata: String){
    self.name = name
    self.damage = damage
    self.metadata = metadata
  }
  func edit(name: String, damage: Int){
    self.name = name
    self.damage = damage
  }
  
  func show(){
    if name != nil, damage != nil{
    print("무기이름: \(name!)")
    print("무기 대미지: \(damage!)")
    print("무기 기원: \(metadata)")
    }
    else{
      print("nil")
    }
  }
}

protocol Man{
  var nickname : String! {get set}
  var age : Int! {get set}
  var level : Int! {get set}

  init(nickname: String, age: Int, level: Int)
}


class Worrior : Sword, Man{
  var nickname : String!
  var age : Int!
  var level : Int!

  required init(nickname: String, age: Int, level: Int){
    self.nickname = nickname
    self.age = age
    self.level = level
    super.init()
  }
  
  override func show(){
    if name != nil, damage != nil{
    print("무기이름: \(name!)")
    print("무기 대미지: \(damage!)")
    print("무기 기원: \(metadata)")
    }
    else{
      print("nil")
    }
  }
}

var hero = Worrior(nickname:"hello",age:20,level:20)
var dragonSword = Sword()
dragonSword.edit(name: "dragon Sword", damage: 200, metadata: "용의 피로 만든 검")

// couldn't binding? 
hero.name = dragonSword.name 
hero.damage = dragonSword.damage
hero.metadata = dragonSword.metadata

hero.show()