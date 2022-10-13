package main

import "fmt"

type Integer interface {
	~int | ~int8 | int16 | int32 | int64
}

func min[T Integer](a, b T) T {
	if a < b {
		return a
	}
	return b
}

type MyInt int

func main() {

	var a MyInt = 10
	var b MyInt = 10
	fmt.Println(min(a, b))

}
