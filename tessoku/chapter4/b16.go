package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n int
	fmt.Fscan(in, &n)

	h := make([]int, n+1)
	for i := 1; i <= n; i++ {
		var hh int
		fmt.Fscan(in, &hh)
		h[i] = hh
	}

	dp := make([]int, n+1)
	dp[1] = 0
	dp[2] = int(math.Abs(float64(h[1] - h[2])))

	for i := 3; i <= n; i++ {
		sa1 := int(math.Abs(float64(h[i-1] - h[i])))
		sa2 := int(math.Abs(float64(h[i-2] - h[i])))

		if sa1+dp[i-1] <= sa2+dp[i-2] {
			dp[i] = sa1 + dp[i-1]
		} else {
			dp[i] = sa2 + dp[i-2]
		}
	}

	fmt.Fprintln(out, dp[n])
}
