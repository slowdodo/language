func add(x: Int,y: Int) -> Int  {       
       return(x+y)
}
print(type(of:add))
let a = add(x:1, y:2)
print(a)
func sayHello(){
  print("Hello")
  print(#function)
}
print(type(of:sayHello))
// (Int, Int) -> Int
// 3
// () -> ()
// sayHello()