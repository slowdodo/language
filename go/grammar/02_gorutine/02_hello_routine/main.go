package main

import (
	"fmt"
	"sync"
)

func main() {
	var wg sync.WaitGroup

	sayHello := func() {
		defer wg.Done()
		fmt.Println("hello")
	}

	wg.Add(1) // Add(n) 메소드의 인자는 실행할 고루틴의 수를 넘긴다.
	go sayHello()
	wg.Wait() // 이 시점에 서브 고루틴에서 wg.Done()이 호출되기 전까지 메인 고루틴을 일시 중지함

	fmt.Println("Done")
}
