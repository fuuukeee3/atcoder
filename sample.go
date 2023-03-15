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

	graph := make([][]int, n)
	for i := 0; i < m; i++ {
		var a, b int
		fmt.Fscan(in, &a, &b)

		a -= 1
		b -= 1
		graph[a] = append(graph[a], b)
		graph[b] = append(graph[b], a)
	}

	fmt.Fprintln(out, graph)
}
