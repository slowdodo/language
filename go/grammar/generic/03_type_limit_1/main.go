package main

import (
	"fmt"

	"golang.org/x/exp/constraints"
)

func min[T constraints.Integer](a, b T) T {
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
