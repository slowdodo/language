var temperature = 60
switch (temperature){
case 0...49 where temperature % 2 == 0:
  print("Cold and even")
case 50...79 where temperature % 2 == 0:
  print("Warm and even")
case 80...110 where temperature % 2 == 0:
  print("Hot and even")
default:
  print("Temperature out of range or odd")
}