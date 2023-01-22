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

	var n, a, b int
	fmt.Fscan(in, &n, &a, &b)

	var s string
	fmt.Fscan(in, &s)

	center := n / 2
	counts := []int{}
	for i := 0; i < n; i++ {
		count := 0
		for j := 0; j < center; j++ {
			if s[j] != s[len(s)-j-1] {
				count++
			}
		}
		counts = append(counts, count)

		s = s[1:] + string(s[0])
	}

	results := []int{}
	for index, count := range counts {
		price := index*a + count*b
		results = append(results, price)
	}

	sort.Sort(sort.IntSlice(results))
	fmt.Fprintln(out, results[0])
}
