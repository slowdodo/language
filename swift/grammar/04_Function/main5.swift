func add(First x: Int,Second y: Int) -> Int  {      
print(#function)
       return(x+y)
}
func add(x: Int,y: Int) -> Int  {  print(#function)
       return(x+y)
}
func add(_ x: Int,_ y: Int) -> Int  {  
  print(#function)
       return(x+y)
}
func add(_ x: Int,with y: Int) -> Int  {  
  print(#function)
       return(x+y)
}
let a = add(First:1, Second:2)
print(a)
let b = add(x:1, y:2)
print(b)
let c = add(1,2)
print(c)
let d = add(1,with:2)
print(d)
// 3
//3 
//3
//3