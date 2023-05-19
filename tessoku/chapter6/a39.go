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

	movies := make([][]int, n)
	for i := 0; i < n; i++ {
		var l, r int
		fmt.Fscan(in, &l, &r)

		movies[i] = []int{l, r}
	}

	sort.Slice(movies, func(i, j int) bool {
		return movies[i][1] < movies[j][1]
	})

	sum := 0
	endTime := 0
	for _, movie := range movies {
		if endTime == 0 || movie[0] >= endTime {
			sum += 1
			endTime = movie[1]
		}
	}
	fmt.Fprintln(out, sum)
}
