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

	var s string
	fmt.Fscan(in, &s)

	sums := []int{0}
	before := ""
	for i := 0; i < n; i++ {
		if before == string(s[i]) {
			sums = append(sums, sums[i]+1)
		} else {
			sums = append(sums, sums[i])
		}
		before = string(s[i])
	}

	for i := 0; i < q; i++ {
		var l, r int
		fmt.Fscan(in, &l, &r)

		fmt.Fprintln(out, sums[r]-sums[l])
	}
}
