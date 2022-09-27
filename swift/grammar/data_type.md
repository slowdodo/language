# Int,UInt

Int

    양수, 음수, 영(0) 값을 담을 수 있는 부호 있는(signed) 정수

    스위프트는 Int8, Int16, Int32, Int64 타입을 지원한다

UInt

    영과 양수만 담을 수 있는 부호 없는(unsigned) 정수

    UInt8, UInt16, UInt32, UInt64 타입도 지원한다.

```swift
var number : Int = 10
print("Int32 Min = \(Int32.min) Int32 Max = \(Int32.max)")
Int32 Min = -2147483648 Int32 Max = 2147483647
```

# Float

    32bit의 부동 고정 소수점 수를 저장, 소수점 6자리 정확도

``` swift
var myWeight : Float = 73.543
```

# Double

    64bit의 부동 소수점 수를 저장, 소수점 15자리 정확도

``` swift
var myWeight : Double = 73.543
```
# Bool

    참 또는 거짓(1 또는 0) 조건을 처리할 데이터 타입

```swift
var orangesAreOrange : Bool
var orangesAreOrange : Bool = true
```

# Char

    스위프트에서의 문자들은 문자소 묶음(grapheme cluster)의 형태로 저장
    문자소 묶음은 하나의 문자를 표현하기 위하여 유니코드 코드 값들로 이루어짐
    char은 선언을 할떄 꼭 선언해야된다.
    그러지 않으면 string형으로 자동으로 타입 추론(Type Inference)이 된다

```swift
var myChar1 : Character
var myChar2 : Character = ":"
var myChar3 : Character = "X" 
var myChar4 = "\u{0058}"
```

# String

    단어나 문장을 구성하는 일련의 문자
    저장, 검색, 비교, 문자열 연결, 수정 등의 기능을 포함
    문자열 보간(string interpolation)을 사용하여 문자열과 변수, 상수, 
    표현식, 함수 호출의 조합으로 만들 수도 있음

```swift
var userName : String = "Kim" // : String 생략하는 것이 일반적임
var age = 20
var message = "\(userName)의 나이는 \(age)입니다."
print(message) 
```

# 표

|타입|	특징|	값의 범위|
|---|---|---|
|Bool|논리 자료형 ( 참 혹은 거짓 )|True / False 둘 중 하나의 값만 저장|
|Int|기본 정수형 타입|-9223372036854775808~ 9223372036854775807|
|Int8|	8비트 크기의 Int|	-128 ~ 127|
|Int16|	16비트 크기의 Int|	-32768 ~ 32767|
|Int32|	32비트 크기의 Int|	-2147483648 ~ 2147483647|
|Int64|	64비트 크기의 Int|	-9223372036854775808~ 9223372036854775807|
|UInt	|Unsigned(부호 없음: 양수만 사용 ) Int	|0 ~ 18446744073709551615|
|UInt8	|Unsigned(부호 없음: 양수만 사용 ) Int8	|0 ~ 255|
|UInt16|	Unsigned(부호 없음: 양수만 사용 ) Int16	|0 ~ 65535|
|UInt32	|Unsigned(부호 없음: 양수만 사용 ) Int32|	0 ~ 4294967295|
|UInt64	|Unsigned(부호 없음: 양수만 사용 ) Int64|	0 ~ 18446744073709551615|
|Float ( = Float32 )|실수형 타입 : 소수점 아래 7~8자리 정확도|	1.175494e-38 ~ 3.402823e+38|
|Double ( = Float64)|실수형 타입 : 소수점 아래 15~16자리 정확도|	2.225073858507201e-308 ~ 1.797693134862316e+308|
|Char|하나의 문자만을 저장|x|
|String|( 여러개의 문자 ) 저장|x|
