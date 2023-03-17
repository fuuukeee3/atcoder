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

	cumulativeSum := []int{0}
	for i := 0; i < n; i++ {
		var nn int
		fmt.Fscan(in, &nn)

		cumulativeSum = append(cumulativeSum, nn+cumulativeSum[i])
	}

	fmt.Fprintln(out, cumulativeSum)
}
