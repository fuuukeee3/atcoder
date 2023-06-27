package main

import (
	"bufio"
	"container/list"
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
	for i := 0; i < m; i++ {
		var a, b int
		fmt.Fscan(in, &a, &b)
		graph[a] = append(graph[a], b)
		graph[b] = append(graph[b], a)
	}

	dist := make([]int, n+1)
	for i := 1; i <= n; i++ {
		dist[i] = -1
	}

	q := list.New()
	dist[1] = 0
	q.PushBack(1)

	for q.Len() > 0 {
		pos := q.Remove(q.Front())

		for _, to := range graph[pos.(int)] {
			if dist[to] == -1 {
				dist[to] = dist[pos.(int)] + 1
				q.PushBack(to)
			}
		}
	}

	for i, d := range dist {
		if i == 1 {
			continue
		}
		fmt.Fprintln(out, d)
	}
}
