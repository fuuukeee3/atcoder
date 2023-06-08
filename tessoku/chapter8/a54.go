package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var q int
	fmt.Fscan(in, &q)

	scores := make(map[string]int)
	for i := 0; i < q; i++ {
		var a int
		var b string
		fmt.Fscan(in, &a, &b)
		switch a {
		case 1:
			var c int
			fmt.Fscan(in, &c)
			scores[b] = c
		case 2:
			fmt.Fprintln(out, scores[b])
		}
	}
}