# 튜플(Tuple)

* 튜플이란
    * 여러 값을 하나의 개체에 일시적으로 묶는 방법
    * 튜플에 저장되는 항목들은 어떠한 타입도 될 수 있으며,</br> 저장된 값들이 모두 동일한 타입이어야 한다는 제약도 없음

1 .튜플 인덱스로도 값을 불러올수있다.
```swift
let myTuple = (10, 12.1, "Hi")
var myString = myTuple.2
print(myString) 
```

2 .튜플은 각 값을 각각 다른 태그에 이름을 할당 가능함
```swift
let myTuple = (10, 12.1, "Hi")
let myTuple = (count: 10, length: 12.1, message: "Hi")
print(myTuple.count)
print(myTuple.length)
print(myTuple.message)
```