func sayHello() {    //리턴값 없으면( -> Void ) 지정하지 않아도 됨
     print("Hello")
}
func message(name: String, age: Int) -> String {
     sayHello()
     print(#function)
     return("\(name)  \(age)")
}

print(message(name:"hello",age: 20))
print(#function)

// Hello
// message(name:age:)
// hello  20