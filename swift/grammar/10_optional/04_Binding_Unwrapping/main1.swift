var x : Int?
var y : Int?
x = 10
y = 20
if let xx = x, let yy=y { // swift에선 ,(쉼표) =and 와 같다.
  print(xx)
  print(yy)
} 
else {
  print("nil")
}