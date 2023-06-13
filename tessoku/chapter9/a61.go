package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
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

	for i, g := range graph {
		if i == 0 {
			continue
		}

		sort.Ints(g)
		var gs []string
		for _, gg := range g {
			gs = append(gs, strconv.Itoa(gg))
		}

		fmt.Fprintf(out, "%d: {%s}\n", i, strings.Join(gs, ", "))
	}
}
