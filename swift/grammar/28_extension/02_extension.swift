protocol Test {
    func hello()
}

extension Test_EX : Test {
    func hello(){
        print("hello world")
    }
}

class Hello_World : Test_EX {
    func hello(){
        print("hello world")
    }
}

var Hello_World = Hello_World()
Hello_World.hello()