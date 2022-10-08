func sayHello(count: Int, name: String = "길동") -> String {
  return ("\(name), 너의 번호는 \(count)")
}
var message = sayHello(count:10, name: "소프트")
print(message)
//소프트, 너의 번호는 10
 message = sayHello(count:100)
print(message) //길동, 너의 번호는 100