func add(x: Int, y: Int) -> Int { 
  return(x+y)
}

print(add(x:10, y:20))
print(type(of:add))    //(Intm Int) -> Int


/////////////////////////////////////////
// Closer 

let add1 = { (x: Int, y: Int) -> Int in 
  return(x+y)
}
// print(add1(x:10, y:20)) //주의 error: extraneous(관련 없는) argument labels 'x:y:' in call
print(add1(10, 20))     //OK
print(type(of:add1))    //(Intm Int) -> Int