# Alias type이란?

```golang
type MyInt int
```
위와 같은 Int는 결과적으로 같은 int라 할지라도 go는 다르게 본다.

```golang
package main

import "fmt"

type MyInt int
type Integer interface {
	int | int8 | int16 | int32 | int64
}
func min[T Integer](a, b T) T {
	if a < b {
		return a
	}
	return b
}

func main() {

	var a MyInt = 10
	var b MyInt = 10
	fmt.Println(min(a, b))

}
```
그렇기때문에 아래와 같은 인터페이스로 제네릭을 사용하면은 에러가 뜬다.
```golang
type Integer interface {
	~int | ~int8 | int16 | int32 | int64
}
```
에러를 고칠려면 아래와같이 `~`를 사용해야한다.