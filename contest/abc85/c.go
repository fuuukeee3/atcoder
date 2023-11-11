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

	var n, y int
	fmt.Fscan(in, &n, &y)

	var a, b, c int
	a = -1
	b = -1
	c = -1
	for ai := 0; ai <= n; ai++ {
		for bi := 0; bi <= n; bi++ {
			ci := n - ai - bi
			if ci < 0 || c > n {
				continue
			}
			if 10000*ai+5000*bi+1000*ci == y {
				a = ai
				b = bi
				c = ci
				break
			}
		}
	}

	fmt.Fprintln(out, a, b, c)
}
