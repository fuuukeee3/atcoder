package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var s string
	fmt.Fscan(in, &s)

	stack := list.New()
	for i, ss := range s {
		if string(ss) == "(" {
			stack.PushFront(i + 1)
		} else {
			start := stack.Remove(stack.Front())
			fmt.Fprintln(out, start, i+1)
		}
	}
}
