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

	var n, d, p int
	fmt.Fscan(in, &n, &d, &p)

	fees := make([]int, n)
	for i := 0; i < n; i++ {
		var f int
		fmt.Fscan(in, &f)
		fees[i] = f
	}

	sort.Ints(fees)

	sums := make([]int, n)
	sums[0] = fees[0]
	for i := 1; i < n; i++ {
		sums[i] = sums[i-1] + fees[i]
	}

	passCount := n / d
	if n%d > 0 {
		passCount++
	}

	answer := sums[len(sums)-1]
	for i := 0; i <= passCount; i++ {
		index := (n - (i * d)) - 1
		if index < 0 {
			if answer > p*i {
				answer = p * i
			}
		} else {
			fee := sums[index] + (p * i)
			if answer > fee {
				answer = fee
			}
		}
	}

	fmt.Fprintln(out, answer)
}
