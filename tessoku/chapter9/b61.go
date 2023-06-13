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

	var n, m int
	fmt.Fscan(in, &n, &m)

	graph := make([]int, n+1)
	for i := 0; i < m; i++ {
		var a, b int
		fmt.Fscan(in, &a, &b)
		graph[a]++
		graph[b]++
	}

	max := 0
	maxIndex := 0
	for i, g := range graph {
		if g >= max {
			max = g
			maxIndex = i
		}
	}

	fmt.Fprintln(out, maxIndex)
}
