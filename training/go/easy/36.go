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

	lmax := 0
	rmin := 999999

	for i := 0; i < m; i++ {
		var l, r int
		fmt.Fscan(in, &l, &r)

		if l > lmax {
			lmax = l
		}
		if r < rmin {
			rmin = r
		}
	}

	ans := rmin - lmax + 1
	if ans > 0 {
		fmt.Fprintln(out, rmin-lmax+1)
	} else {
		fmt.Fprintln(out, 0)
	}
}
