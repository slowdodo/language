var x = 1 
while true { 
    // if x > 6 break <- Error 이건 안됨
    if x > 6 { break} // 위 코드와 비슷하다 하지만 거짓일떄 실행 
    print(x) 
    x = x + 3 
    print(x)
}