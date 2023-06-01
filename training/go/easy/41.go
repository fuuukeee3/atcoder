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

	var n int
	fmt.Fscan(in, &n)

	p := make([]int, n)
	for i := 0; i < n; i++ {
		var pp int
		fmt.Fscan(in, &pp)
		p[i] = pp
	}

	count := 0
	min := 999999
	for _, pp := range p {
		if pp <= min {
			count += 1
			min = pp
		}
	}

	fmt.Fprintln(out, count)
}
