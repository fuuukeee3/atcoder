package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n int
	fmt.Fscan(in, &n)

	var a []int
	for i := 0; i < n; i++ {
		var aa int
		fmt.Fscan(in, &aa)
		a = append(a, aa)
	}

	sort.Ints(a)

	var q int
	fmt.Fscan(in, &q)

	for i := 0; i < q; i++ {
		var x int
		fmt.Fscan(in, &x)

		l := 0
		r := n - 1
		for l <= r {
			mid := (l + r) / 2
			if x <= a[mid] {
				r = mid - 1
			} else if x > a[mid] {
				l = mid + 1
			}
		}
		fmt.Fprintln(out, l)
	}
}
