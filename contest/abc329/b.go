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

	a := make([]int, n)
	for i := 0; i < n; i++ {
		var aa int
		fmt.Fscan(in, &aa)
		a[i] = aa
	}

	max := 0
	for i := 0; i < n; i++ {
		if a[i] > max {
			max = a[i]
		}
	}

	max2 := 0
	for i := 0; i < n; i++ {
		if max == a[i] {
			continue
		}
		if a[i] > max2 {
			max2 = a[i]
		}
	}

	fmt.Fprintln(out, max2)
}
