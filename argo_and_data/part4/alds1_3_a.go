package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	fmt.Println(stack("1 2 + 3 4 - *"))
}

func stack(s string) int {
	stack := []int{}

	//rex := regexp.MustCompile("[0-9]]+")
	for _, ss := range strings.Split(s, " ") {
		if ss == "+" {
			b := stack[len(stack)-1]
			stack = stack[0 : len(stack)-1]

			a := stack[len(stack)-1]
			stack = stack[0 : len(stack)-1]

			stack = append(stack, a+b)
		} else if ss == "-" {
			b := stack[len(stack)-1]
			stack = stack[0 : len(stack)-1]

			a := stack[len(stack)-1]
			stack = stack[0 : len(stack)-1]

			stack = append(stack, a-b)
		} else if ss == "*" {
			b := stack[len(stack)-1]
			stack = stack[0 : len(stack)-1]

			a := stack[len(stack)-1]
			stack = stack[0 : len(stack)-1]

			stack = append(stack, a*b)
		} else {
			a, _ := strconv.Atoi(ss)
			stack = append(stack, a)
		}
	}

	return stack[0]
}
