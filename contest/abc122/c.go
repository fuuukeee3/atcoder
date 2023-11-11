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

	cumulativeSum := []int{0}
	for i, ss := range s {
		if i == 0 {
			cumulativeSum = append(cumulativeSum, 0)
			continue
		}

		if string(s[i-1]) == "A" && string(ss) == "C" {
			cumulativeSum = append(cumulativeSum, cumulativeSum[i]+1)
		} else {
			cumulativeSum = append(cumulativeSum, cumulativeSum[i])
		}
	}

	for i := 0; i < q; i++ {
		var l, r int
		fmt.Fscan(in, &l, &r)

		fmt.Fprintln(out, cumulativeSum[r]-cumulativeSum[l])
	}
}
