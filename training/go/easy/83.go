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

	var n int
	fmt.Fscan(in, &n)

	a1 := make([]int, n)
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)
		a1[i] = a
	}

	a2 := make([]int, n)
	for i := 0; i < n; i++ {
		var a int
		fmt.Fscan(in, &a)
		a2[i] = a
	}

	results := make([]int, n)
	for i := 0; i < n; i++ {
		tmp := 0
		for c := 0; c <= i; c++ {
			tmp += a1[c]
		}
		for ii := i; ii < n; ii++ {
			tmp += a2[ii]
		}
		results[i] = tmp
	}

	sort.Ints(results)
	fmt.Fprintln(out, results[len(results)-1])
}
