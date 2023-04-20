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
	fmt.Fscan(in, &n)

	var s, t []int
	for i := 0; i < n; i++ {
		var nn int
		fmt.Fscan(in, &nn)
		s = append(s, nn)
	}

	fmt.Fscan(in, &q)
	for i := 0; i < q; i++ {
		var nn int
		fmt.Fscan(in, &nn)
		t = append(t, nn)
	}

	count := 0
	for _, tt := range t {
		for _, ss := range s {
			if tt == ss {
				count++
				break
			}
		}
	}

	fmt.Fprintln(out, count)
}
