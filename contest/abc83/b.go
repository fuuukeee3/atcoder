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

	var n, a, b int
	fmt.Fscan(in, &n, &a, &b)

	total := 0
	for i := 1; i <= n; i++ {
		sum := someSum(i)
		if sum >= a && sum <= b {
			total += i
		}
	}
	fmt.Fprintln(out, total)
}

func someSum(n int) int {
	total := 0
	for {
		total += n % 10
		n = n / 10
		if n == 0 {
			break
		}
	}
	return total
}
