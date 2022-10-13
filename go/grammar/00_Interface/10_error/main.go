// 유리수도 올수가 있지만 `string, 구조체` 이런것들도 올수있기에
// 문법이 엄격한 golang은 interface는 비교연산을 할 수 없게 막았다
package main

import "fmt"

func min(a, b interface{}) interface{} {
	if a < b { // interface is not compare function
		return a
	}
	return b
}

func main() {
	fmt.Println(min(a, b)) // Error!
}
