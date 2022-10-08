package main

import "fmt"

type Integer interface {
	int | int16 | int64 | float32 | float64
}

func min[T Integer](a, b T) T {
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
