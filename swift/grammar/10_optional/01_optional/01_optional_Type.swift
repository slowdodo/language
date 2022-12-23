var x : Int?
var y : Int! 
x = 10
y = 20
print(x) //Optional(10)
print(x!) // forced unwrapping
print(y) // forced unwrapping
print(y!) //0

//x = 20 + 30
y = 20 + 30
print(y!)