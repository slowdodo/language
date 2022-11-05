# 옵셔널(Optional)

변수 또는 상수에 아무런 값이 할당되지 않는 상황을 안전하게 처리하기 위한 방법 제공한다.
옵셔널 타입 변수를 선언하기 위해서는 타입 선언부 뒤에 “?” 문자를 쓴다.


1. 값을 반환할 때 오류가 발생할 가능성이 있는 값은 옵셔널 타입이라는 객체로 감싸서 반환함

2. Swift에서 기본 자료형(Int, Double, String 등)은 nil값을 저장할 수 없음

3. nil을 저장하려면 옵셔널 타입으로 선언해야 함

4. Int("Hi") 은 정수 값을 반환할 수 없음, 아무런 값도 반환할 수 없다는 의미로 nil을 반환 

5. Int("123") 은 123이 아닌 Optional(123)을 리턴함,print(Int("123")), Int형 initializer

```swift
var x : Int?
var y : Int = 0
x = 10
print(x) //Optional(10)
```

# 옵셔널의 종류

## ! 

느낌표를 사용한 옵셔널은 기존 변수처럼 사용이 가능하고 nil을 할당할 수 있다.

## ?
물음표를 사용한 일반적인 옵셔널의 경우 nil 의 값을 할당할 수 있지만, 기존 변수처럼 사용할 수 없다

# 언래핑 코딩 방법론

1. 그냥 풀기
```swift
var x : Int?
var y : Int = 0
x = 10
print(x) //Optional(10)
print(x!) // 10 <- optional forced unwrapping
```
2. if문을 이용해서 언래핑 풀기
```swift
var x : Int?
x = 10
if x != nil {
  print(x!)
} 
else {
  print("nil")
}
var x1 : Int?   //nil
if x1 != nil {
  print(x1!)
} 
else {
  print("nil")
}

```

# 바인딩으로 풀기

옵셔널 바인딩(optional binding)을 이용하여 옵셔널에 할당된 값을 임시 변수 또는 상수에 할당


1. 옵셔널 변수가 값이 있다면 언래핑해서 일반 `상수` constantname에 대입하고 if문 실행
2. 값이 없다면 if문의 조건이 거짓이 되어 if문을 실행하지 않음
}
```swift
if let constantname = optionalName{
}
```
1. 옵셔널 변수가 값이 있다면 언래핑해서 일반 `변수` variblename에 대입하고 if문 실행
2. 값이 없다면 if문의 조건이 거짓이 되어 if문을 실행하지 않음
```swift
if var variablename = optionalName {
}
```

# 바인딩 언래핑 코딩 방법론

```swift
var x : Int?
x = 10
if let xx = x { //옵셔널 변수 x가 값(10)이 있으므로 언래핑해서 일반 상수 xx에 대입하고 if문 실행
  print(x, xx)
} 
else {
  print("nil")
}
var x1 : Int?
if let xx = x1 { //옵셔널 변수 x1이 값이 없어서 if문의 조건이 거짓이 되어 if문 실행하지 않고 else로 감
  print(xx)
} 
else {
  print("nil")
}
```

```swift
var x : Int?
var y : Int?
x = 10
y = 20
if let xx = x, let yy=y { // swift에선 ,(쉼표) =and 와 같다.
  print(xx)
  print(yy)
} 
else {
  print("nil")
}
```