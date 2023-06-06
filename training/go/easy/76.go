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

	var n, m int
	fmt.Fscan(in, &n, &m)

	ac := make([]int, n+1)
	wa := make([]int, n+1)

	for i := 0; i < m; i++ {
		var p int
		var s string
		fmt.Fscan(in, &p, &s)

		if s == "AC" {
			ac[p] = 1
		} else {
			if ac[p] != 1 {
				wa[p]++
			}
		}
	}

	acCount := 0
	for _, a := range ac {
		if a == 1 {
			acCount++
		}
	}

	waCount := 0
	for i, w := range wa {
		if ac[i] == 1 {
			waCount += w
		}
	}

	fmt.Fprintln(out, acCount, waCount)
}
