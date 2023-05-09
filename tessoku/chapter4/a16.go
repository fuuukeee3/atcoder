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

	a := make([]int, n+1)
	for i := 2; i <= n; i++ {
		var aa int
		fmt.Fscan(in, &aa)
		a[i] = aa
	}

	b := make([]int, n+1)
	for i := 3; i <= n; i++ {
		var bb int
		fmt.Fscan(in, &bb)
		b[i] = bb
	}

	dp := make([]int, n+1)
	dp[1] = 0
	dp[2] = a[2]
	for i := 3; i <= n; i++ {
		aaa := dp[i-1] + a[i]
		bbb := dp[i-2] + b[i]
		if aaa <= bbb {
			dp[i] = aaa
		} else {
			dp[i] = bbb
		}
	}

	fmt.Fprintln(out, dp[n])
}
