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

	var k, n int
	fmt.Fscan(in, &k, &n)

	a := []int{}
	for i := 0; i < n; i++ {
		var aa int
		fmt.Fscan(in, &aa)
		a = append(a, aa)
	}

	results := []int{}
	for i := 0; i < n-1; i++ {
		results = append(results, a[i+1]-a[i])
	}

	results = append(results, k-a[n-1]+a[0])

	sort.Ints(results)
	sum := 0
	for i := 0; i < len(results)-1; i++ {
		sum += results[i]
	}
	fmt.Fprintln(out, sum)
}
