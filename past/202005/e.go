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

	var n, m, q int
	fmt.Fscan(in, &n, &m, &q)

	graph := make([][]int, n)
	for i := 0; i < m; i++ {
		var a, b int
		fmt.Fscan(in, &a, &b)

		a -= 1
		b -= 1
		graph[a] = append(graph[a], b)
		graph[b] = append(graph[b], a)
	}

	colors := []int{}
	for i := 0; i < n; i++ {
		var c int
		fmt.Fscan(in, &c)
		colors = append(colors, c)
	}

	for i := 0; i < q; i++ {
		var s1, s2 int
		fmt.Fscan(in, &s1, &s2)

		if s1 == 1 {
			fmt.Fprintln(out, colors[s2-1])
			for _, u := range graph[s2-1] {
				colors[u] = colors[s2-1]
			}
		} else {
			var s3 int
			fmt.Fscan(in, &s3)

			fmt.Fprintln(out, colors[s2-1])
			colors[s2-1] = s3
		}
	}
}
