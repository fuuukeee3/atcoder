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

	var q int
	fmt.Fscan(in, &q)

	que := list.New()
	for i := 0; i < q; i++ {
		var a int
		fmt.Fscan(in, &a)

		switch a {
		case 1:
			var b string
			fmt.Fscan(in, &b)
			que.PushBack(b)
		case 2:
			fmt.Fprintln(out, que.Front().Value)
		case 3:
			que.Remove(que.Front())
		}
	}
}
