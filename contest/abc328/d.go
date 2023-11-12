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
	for i := 0; i < len(s); i++ {
		if string(s[i]) != "C" {
			stack.PushBack(string(s[i]))
			continue
		}

		tmp := "C"
		if stack.Back() != nil {
			tmp = stack.Remove(stack.Back()).(string) + tmp
		}

		if stack.Back() != nil {
			tmp = stack.Remove(stack.Back()).(string) + tmp
		}

		if tmp == "ABC" {
			continue
		} else {
			for _, c := range tmp {
				stack.PushBack(string(c))
			}
		}
	}

	for e := stack.Front(); e != nil; e = e.Next() {
		fmt.Fprint(out, e.Value)
	}
	fmt.Fprintln(out, "")
}
