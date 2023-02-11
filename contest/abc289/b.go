package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n, m int
	fmt.Fscan(in, &n, &m)

	var arr []int
	for i := 0; i < m; i++ {
		var a int
		fmt.Fscan(in, &a)
		arr = append(arr, a)
	}

	//fmt.Fprintln(out, arr)

	graph := make([]int, n+1, n+1)
	for _, a := range arr {
		graph[a] = a
	}

	//fmt.Fprintln(out, graph)

	results := []string{}
	results2 := []string{}
	for index, g := range graph {
		if index == 0 {
			continue
		}
		results = append(results, strconv.Itoa(index))

		if g == 0 {
			for i := len(results) - 1; i >= 0; i-- {
				results2 = append(results2, results[i])
			}
			results = []string{}
		}
	}

	for i := len(results) - 1; i >= 0; i-- {
		results2 = append(results2, results[i])
	}

	fmt.Fprintln(out, strings.Join(results2, " "))
}
