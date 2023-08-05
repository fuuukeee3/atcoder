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

	var a []int
	for i := 0; i < n; i++ {
		var p int
		fmt.Fscan(in, &p)
		a = append(a, p)
	}

	max := 0
	for i, aa := range a {
		if i == 0 {
			continue
		}
		if aa >= max {
			max = aa
		}
	}

	ans := max + 1 - a[0]
	if ans < 0 {
		fmt.Fprintln(out, 0)
	} else {
		fmt.Fprintln(out, ans)
	}
}
