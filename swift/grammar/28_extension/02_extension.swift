protocol Test {
    func hello()
}

extension Test{
    func hello() {
        print("hello world")
    }
}

struct Hello_World : Test{
    func hello() {
        print("hello world")
    }
}

var testCase = Hello_World()
testCase.hello()