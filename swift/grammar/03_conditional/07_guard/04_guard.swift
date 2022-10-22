func printName(firstName:String, lastName:String?){ 
    if let iName = lastName {   // lastName이 nil이 아니면
        print(iName,firstName)
    }
    else {
    print("성이 없네요!")
}
// print(lName,firstName) <- Error 

  





////////////////////////////////////////////////////////////////////////////// 
//                  Guard
////////////////////////////////////////////////////////////////////////////// 
    guard let lName = lastName else { // lastName이 nil이면 
        print("성이 없네요!")
        return // early exit
    }
// print("if_String = \(iName)")  // <- Error
print("let_String = \(lName)")
// print("var_Stirng = \(vName)") // <-  var은 되지않는다.
}




// Guard는 guard에서 생성된 상수를 guard를 사용한 조건이나 함수 내부에서 사용이 가능하다.