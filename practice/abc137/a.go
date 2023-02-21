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

	var a, b int
	fmt.Fscan(in, &a, &b)

	var results []int
	results = append(results, a+b)
	results = append(results, a-b)
	results = append(results, a*b)

	max := -999999999
	for _, r := range results {
		if r > max {
			max = r
		}
	}

	fmt.Fprintln(out, max)
}
