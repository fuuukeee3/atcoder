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

	var d, n int
	fmt.Fscan(in, &d, &n)

	results := make([]int, d)
	for i := range results {
		results[i] = 24
	}

	for i := 0; i < n; i++ {
		var l, r, h int
		fmt.Fscan(in, &l, &r, &h)

		for ii := l; ii <= r; ii++ {
			if results[ii-1] > h {
				results[ii-1] = h
			}
		}
	}

	sum := 0
	for _, r := range results {
		sum += r
	}
	fmt.Fprintln(out, sum)

}
