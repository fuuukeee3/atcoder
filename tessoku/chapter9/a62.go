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

	graph := make([][]int, n+1)
	visited := make([]bool, n+1)

	for i := 0; i < m; i++ {
		var a, b int
		fmt.Fscan(in, &a, &b)
		graph[a] = append(graph[a], b)
		graph[b] = append(graph[b], a)
	}

	dfs(graph, visited, 1)

	flg := true
	for i, v := range visited {
		if i == 0 {
			continue
		}

		if !v {
			flg = false
			break
		}
	}

	if flg {
		fmt.Fprintln(out, "The graph is connected.")
	} else {
		fmt.Fprintln(out, "The graph is not connected.")
	}
}

func dfs(graph [][]int, visited []bool, position int) {
	visited[position] = true

	for _, nex := range graph[position] {
		if !visited[nex] {
			dfs(graph, visited, nex)
		}
	}
}
