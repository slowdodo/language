# for문
swift에서 for문은 특이하다.

```swift
for 상수명 in 컬렉션 또는 범위 {
// 실행될 코드
}
```

예제 1
```swift
for index in 1...5 {
 print(index)
}
```

예제 2
```swift
for index in ...5 {
 print(index)
}
```

예제 3
```swift
for index in 1... {
 print(index)
}
```

예제 4
```swift
for index in 1..<5 {
 print(index)
}
```
