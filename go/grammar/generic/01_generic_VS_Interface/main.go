package main

import "fmt"

//
// 	 func min(a, b interface{}) interface{} {
// 		if a < b { // interface is not compare function
// 			return a
// 		}
// 		return b
// 	}
//
// string, 구조체 이런것들도 올수있기에 interface는 비교연산을 할 수가 없다.

//  func min0[T any](a, b T) T {
// 	if a < b { // interface is not compare function
// 		return a
// 	}
// 	return b
// }
// any 도 마찬가지로 string 구조체 등이 올 수 있기에 막아놓았다

// 아래와 같은 방식으로 특정 타입들을 정의해줘서 비교연산이 가능하게 해줄수 있다.
func min[T int | int16 | int64 | float32 | float64](a, b T) T {
	if a < b {
		return a
	}
	return b
}

func main() {
	var a int = 10
	var b int = 20
	fmt.Println(min(a, b))
	var c int16 = 10
	var d int16 = 20
	fmt.Println(min(c, d))
}
