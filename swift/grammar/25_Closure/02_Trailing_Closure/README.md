# Closure 미사용
```swift
func someFun(cl: () -> Void) { 

} 
```

# trailing closure를 사용 안하면 
```swift
someFun(cl: { 
  //closure’s body 
}) 

```

# trailing closure 사용 
```swift
someFun() { 
  //trailing closure's body goes here 
}
```