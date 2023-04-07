package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type Stack struct {
	data []int
}

func (s *Stack) push(a int) {
	s.data = append(s.data, a)
}
func (s *Stack) pop() int {
	rtn := s.data[len(s.data)-1]
	s.data = s.data[0 : len(s.data)-1]
	return rtn
}

func main() {
	//fmt.Println(poland("1 2 + 3 4 - *"))

	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()

	fmt.Println(poland(scanner.Text()))
}

func poland(s string) int {
	stack := Stack{}

	for _, ss := range strings.Split(s, " ") {
		if ss == "+" {
			b := stack.pop()
			a := stack.pop()
			stack.push(a + b)
		} else if ss == "-" {
			b := stack.pop()
			a := stack.pop()
			stack.push(a - b)
		} else if ss == "*" {
			b := stack.pop()
			a := stack.pop()
			stack.push(a * b)
		} else {
			a, _ := strconv.Atoi(ss)
			stack.push(a)
		}
	}

	return stack.data[0]
}
