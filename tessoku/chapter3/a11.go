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

	var a []int
	for i := 0; i < n; i++ {
		var aa int
		fmt.Fscan(in, &aa)
		a = append(a, aa)
	}

	l := 0
	r := n - 1

	for {
		mid := (l + r) / 2
		if x < a[mid] {
			r = mid - 1
		} else if x > a[mid] {
			l = mid + 1
		} else {
			fmt.Fprintln(out, mid+1)
			break
		}
	}
}
