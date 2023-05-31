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

	var n, q int
	fmt.Fscan(in, &n, &q)

	a := make([]int, n)
	for i := 1; i <= n; i++ {
		a[i-1] = i
	}

	state := true
	for i := 0; i < q; i++ {
		var q int
		fmt.Fscan(in, &q)
		switch q {
		case 1:
			var x, y int
			fmt.Fscan(in, &x, &y)
			if state {
				a[x-1] = y
			} else {
				a[n-x] = y
			}
		case 2:
			state = !state
		case 3:
			var x int
			fmt.Fscan(in, &x)

			if state {
				fmt.Fprintln(out, a[x-1])
			} else {
				fmt.Fprintln(out, a[n-x])
			}
		}
	}
}
