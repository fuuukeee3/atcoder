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

	var n, x int
	fmt.Fscan(in, &n, &x)

	s := make([]int, n)
	for i := 0; i < n; i++ {
		var ss int
		fmt.Fscan(in, &ss)
		s[i] = ss
	}

	sum := 0
	for _, score := range s {
		if score <= x {
			sum += score
		}
	}

	fmt.Fprintln(out, sum)
}
