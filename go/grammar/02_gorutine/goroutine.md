# 고루틴(Goroutine)
Goroutine은 스레드의 고질적인 문제인 많이 사용할수록 증가하는 오버헤드를 줄이기 위해 만들어진 기능이다.
<br/>그렇기에 기존 스레드보다 훨씬 적게 오버헤드를 일으킨다. 
여러개의 함수를 비동기적으로 실행할수 있으며 함수 호출이 매우 간단하다.


```go
package main

import (
	"fmt"
	"time"
)

func say(s string) {
	for i := 0; i < 5; i++ {
		time.Sleep(100 * time.Millisecond)
		fmt.Println(s)
	}
}

func main() {
	go say("world")
	say("hello")
}
```
일단 나중에