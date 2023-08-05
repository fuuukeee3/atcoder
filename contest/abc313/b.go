package main

import (
	"bufio"
	"fmt"
	"os"
)

func dfs(graph [][]int, visited []bool, position int) {
	visited[position] = true

	for _, nex := range graph[position] {
		if !visited[nex] {
			dfs(graph, visited, nex)
		}
	}
}

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n, m int
	fmt.Fscan(in, &n, &m)

	graph := make([][]int, n+1)

	for i := 0; i < m; i++ {
		var a, b int
		fmt.Fscan(in, &a, &b)
		graph[a] = append(graph[a], b)
	}

	var results []int
	for i := 1; i <= n; i++ {
		visited := make([]bool, n+1)
		dfs(graph, visited, i)

		flg := true
		for ii, v := range visited {
			if ii == 0 {
				continue
			}
			if !v {
				flg = false
				break
			}
		}
		if flg {
			results = append(results, i)
		}
	}

	if len(results) == 1 {
		fmt.Fprintln(out, results[0])
	} else {
		fmt.Fprintln(out, -1)
	}
}
