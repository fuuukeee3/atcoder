package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
	"strings"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n, x int
	fmt.Fscan(in, &n, &x)
	var a string
	fmt.Fscan(in, &a)
	aa := make([]string, n)
	for i, s := range a {
		aa[i] = string(s)
	}
	aa = append([]string{""}, aa...)

	q := list.New()
	q.PushBack(x)
	aa[x] = "@"

	for q.Len() > 0 {
		pos := q.Remove(q.Front())

		if pos.(int)-1 >= 1 && aa[pos.(int)-1] == "." {
			aa[pos.(int)-1] = "@"
			q.PushBack(pos.(int) - 1)
		}
		if pos.(int)+1 <= n && aa[pos.(int)+1] == "." {
			aa[pos.(int)+1] = "@"
			q.PushBack(pos.(int) + 1)
		}
	}

	fmt.Fprintln(out, strings.Join(aa, ""))
}
