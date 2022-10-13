func converter(length: Float) -> (yards: Float, centimeters: Float, meters: Float) {
  let yards = length * 0.0277778
  let centimeters = length * 2.54
  let meters = length * 0.0254
  return (yards, centimeters, meters)
}

var lengthTuple = converter(length:10)
print(lengthTuple)
print(lengthTuple.yards) 
print(lengthTuple.centimeters) 
print(lengthTuple.meters) 
// (yards: 0.277778, centimeters: 25.4, meters: 0.254)
// 0.277778
// 25.4
// 0.254